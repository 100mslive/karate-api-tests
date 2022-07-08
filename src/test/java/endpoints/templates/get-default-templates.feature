Feature: get templates tests
  Background:
    * url 'https://qa-in2.100ms.live/hmsapi'
    * def tokengenerator = Java.type('utils.TokenGenerator');
    * def token = tokengenerator.getToken();

  Scenario: get all users and then get the first user by id
    Given path '/roles/default-templates'
    And header authorization = 'Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ2ZXJzaW9uIjoyLCJ0eXBlIjoibWFuYWdlbWVudCIsImFwcF9kYXRhIjpudWxsLCJhY2Nlc3Nfa2V5IjoiNjI4MjJkYjAwNWM2NDg3ZjllNTU2NDU2IiwiZXhwIjoxNjU3MDM0MTE5LCJqdGkiOiI4ZTg4NTRlNS0wYjdkLTQ5ODctYTM1MC01NDExYjk1ZGNhZTMiLCJpYXQiOjE2NTY5OTgxMTksImlzcyI6IjYyODIyZGFmMDVjNjQ4N2Y5ZTU1NjQ1MiIsIm5iZiI6MTY1Njk5ODExOSwic3ViIjoiYXBpIn0.iNsdZ5lRbXHnSxAK4ZJfrXLX8beDVd-WeBv6tjCndPQ'
    When method get
    Then status 200
    And print response