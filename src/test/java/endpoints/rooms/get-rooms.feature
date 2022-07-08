Feature: get sessions tests

  Background:
    * url 'https://qa-in2.100ms.live/hmsapi'
    * def tokengenerator = Java.type('utils.TokenGenerator');
    * def token = tokengenerator.getToken();

  Scenario: get all users and then get the first user by id
    Given path '/rooms'
    And param id = '62c2ae73b018941974406f46';
    And param email = 'sahil@100ms.live';
    And header authorization = token
    When method get
    Then status 200
    And print response