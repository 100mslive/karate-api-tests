@debug
Feature: get sessions tests

  Background:
    * url baseUrl
    * def utilities = Java.type('utils.Commons');
    * def token = utilities.getToken(appSecret, appAccessKey);

  Scenario: get all users and then get the first user by id
    Given path '/rooms'
    And param id = '62c2ae73b018941974406f46';
    And param email = 'sahil@100ms.live';
    And header authorization = token
    When method get
    Then status 200
    And print response