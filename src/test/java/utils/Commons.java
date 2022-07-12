package utils;

import io.jsonwebtoken.Jwts;
import io.jsonwebtoken.SignatureAlgorithm;

import java.time.Instant;
import java.util.Date;
import java.util.HashMap;
import java.util.Map;
import java.util.UUID;

public class Commons {
     public static String getToken(String secret, String accessKey) {
         Map<String, Object> payload = new HashMap<>();
         payload.put("access_key", accessKey);
         payload.put("type", "management");
         payload.put("version", 2);
         String token = Jwts.builder().setClaims(payload).setId(UUID.randomUUID().toString())
                 .setExpiration(new Date(System.currentTimeMillis() + 86400 * 1000))
                 .setIssuedAt(Date.from(Instant.ofEpochMilli(System.currentTimeMillis() - 60000)))
                 .setNotBefore(new Date(System.currentTimeMillis()))
                 .signWith(SignatureAlgorithm.HS256, secret.getBytes()).compact();
         return "Bearer " + token;
     }

     public static int getRandomNumber(){
       return  (int) Math.floor(Math.random() * 100000);
     }
}
