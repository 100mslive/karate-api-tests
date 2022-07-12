package utils;

import io.jsonwebtoken.Jwts;
import io.jsonwebtoken.SignatureAlgorithm;

import java.time.Instant;
import java.util.Date;
import java.util.HashMap;
import java.util.Map;
import java.util.UUID;

public class TokenGenerator {
     public static String getToken() {
         String appConstant = "26nL6KVZ2u3MODHNE4ugxf0mEQA-0t0W-CxOSSAOKFl5Waq0QkH9XGtImbEo9sgM2oe3eerzMrcM8xCfqujK-jIfncwUFt6BabgB49ELmLFnXO35h29mdav9N2d8TCG8r5-5DmGT2wiNDQZDe3NwmM0dp4HCWSiJn9SpIuiUpxc=";
         Map<String, Object> payload = new HashMap<>();
         payload.put("access_key", "62822daf05c6487f9e556455");
         payload.put("type", "management");
         payload.put("version", 2);
         String token = Jwts.builder().setClaims(payload).setId(UUID.randomUUID().toString())
                 .setExpiration(new Date(System.currentTimeMillis() + 86400 * 1000))
                 .setIssuedAt(Date.from(Instant.ofEpochMilli(System.currentTimeMillis() - 60000)))
                 .setNotBefore(new Date(System.currentTimeMillis()))
                 .signWith(SignatureAlgorithm.HS256, appConstant.getBytes()).compact();
         return "Bearer " + token;
     }

     public static int getRandomNumber(){
       return  (int) Math.floor(Math.random() * 100000);
     }
}
