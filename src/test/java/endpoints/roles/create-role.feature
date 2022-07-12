Feature: create new role
  Background:
    * url 'https://qa-in2.100ms.live/hmsapi'
    * def tokengenerator = Java.type('utils.TokenGenerator');
    * def token = tokengenerator.getToken();
    * def roleName = 'new-role-' + tokengenerator.getRandomNumber();

  Scenario: get all users and then get the first user by id
    Given path '/roles/create-role/62cd0237ef2402e65ab3d8e3'
    * header authorization = token
    * def payload = read('../../data/create-role.json')
    * replace payload
      | token      | value     |
      | ${roleName} | roleName |
    * print payload
    And request payload
    When method post
    Then status 200
    And print response