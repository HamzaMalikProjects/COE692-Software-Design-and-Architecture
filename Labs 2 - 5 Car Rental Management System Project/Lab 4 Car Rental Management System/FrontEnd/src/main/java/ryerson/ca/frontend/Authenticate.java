package ryerson.ca.frontend;

import java.io.UnsupportedEncodingException;
import java.security.Key;
import java.util.AbstractMap;
import java.util.Date;
import java.util.Map.Entry;
import javax.crypto.spec.SecretKeySpec;
import javax.xml.bind.DatatypeConverter;

public class Authenticate {

    private SignatureAlgorithm signatureAlgorithm;
    private String secretString;

    public Authenticate() {
        signatureAlgorithm = SignatureAlgorithm.HS256;
        secretString = Encoders.BASE64.encode("mysecuresecurecode".getBytes());
    }

    public String createJWT(String issuer, String subject, long ttlMillis) {
        long nowMillis = System.currentTimeMillis();
        Date now = new Date(nowMillis);
        byte[] apiKeySecretBytes = DatatypeConverter.parseBase64Binary(secretString);
        Key signingKey = new SecretKeySpec(apiKeySecretBytes, signatureAlgorithm.getJcaName());

        JwtBuilder builder = Jwts.builder()
                .setIssuedAt(now)
                .setSubject(subject)
                .setIssuer(issuer)
                .signWith(signingKey);

        if (ttlMillis > 0) {
            long expMillis = nowMillis + ttlMillis;
            Date exp = new Date(expMillis);
            builder.setExpiration(exp);
        }

        return builder.compact();
    }

    public Entry<Boolean, String> verify(String jwt) {
        Jws<Claims> jws;
        try {
            jws = Jwts.parserBuilder()
                    .setSigningKey(DatatypeConverter.parseBase64Binary(secretString))
                    .build()
                    .parseClaimsJws(jwt);

            String username = jws.getBody().getSubject();
            return new AbstractMap.SimpleEntry<>(true, username);

        } catch (JwtException ex) {
            return new AbstractMap.SimpleEntry<>(false, "");
        }
    }
}
