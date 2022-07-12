Feature: get app tests

  Background:
    * url baseUrl
    * def utilities = Java.type('utils.Commons');
    * def token = utilities.getToken(appSecret, appAccessKey);

  Scenario: get all users and then get the first user by id
    Given path '/all-apps'
    And header authorization = token
    When method get
    Then status 200
    And print response