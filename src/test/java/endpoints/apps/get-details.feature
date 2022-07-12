Feature: get details app

  Background:
    * url baseUrl
    * def utilities = Java.type('utils.Commons');
    * def token = utilities.getToken(appSecret, appAccessKey);
    * def result = call read('add-new-app.feature')

  Scenario: get all users and then get the first user by id
    * print result
    Given path 'apps/get-details'
    And param domain = result.response.role_link.subdomain
    And param room_id = result.response.role_link.identifier
    And header authorization = token
    When method get
    Then status 200
    And print response