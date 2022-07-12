Feature: add new app

  Background:
    * url baseUrl
    * def utilities = Java.type('utils.Commons');
    * def token = utilities.getToken(appSecret, appAccessKey);
    * def appName = 'automation' + utilities.getRandomNumber();

  Scenario: get all users and then get the first user by id
    Given path '/add-new-app'
    * header authorization = token
    * def payload = read('../../data/add-new-app.json')
    * replace payload
      | token      | value   |
      | ${appName} | appName |
    * print payload
    And request payload
    When method post
    Then status 200
    And print response