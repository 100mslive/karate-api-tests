Feature: add new app

  Background:
    * url 'https://qa-in2.100ms.live/hmsapi'
    * def tokengenerator = Java.type('utils.TokenGenerator');
    * def token = tokengenerator.getToken();

  Scenario: get all users and then get the first user by id
    Given path '/add-new-app'
    And header authorization = token
    * def payload = read('../../data/add-new-app.json')
    * print payload
    And request payload
    When method post
    Then status 200
    And print response