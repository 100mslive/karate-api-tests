Feature: create new role
  Background:
    * url baseUrl
    * def utilities = Java.type('utils.Commons');
    * def token = utilities.getToken(appSecret, appAccessKey);
    * def roleName = 'new-role-' + utilities.getRandomNumber();

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