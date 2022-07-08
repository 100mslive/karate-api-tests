package utils;

public class TokenGenerator {
     public static String getToken() {

         String token = "Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ2ZXJzaW9uIjoyLCJ0eXBlIjoibWFuYWdlbWVudCIsImFwcF9kYXRhIjpudWxsLCJhY2Nlc3Nfa2V5IjoiNjJjNjk2YTk4YzllN2Y3Nzk2Y2Q5ZWM2IiwiZXhwIjoxNjY1ODIyMDYzLCJqdGkiOiI3NDU3YWIwMC1iYzdiLTQzMWItYmY0MS04ZmE0ODU2YWQyMjkiLCJpYXQiOjE2NTcxODIwNjMsImlzcyI6IjYyYzY5NmE4OGM5ZTdmNzc5NmNkOWVjMiIsIm5iZiI6MTY1NzE4MjA2Mywic3ViIjoiYXBpIn0.AhP_c5v-m1HZN6yqZ6s3R6Nu23-cfGhBzl2SSlUOp_A";
         return token;
     }

     public static int getRandomNumber(){
       return  (int) Math.floor(Math.random() * 10000);
     }
}
