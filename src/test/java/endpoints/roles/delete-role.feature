Feature: delete role name

  Background:
    * url baseUrl
    * def utilities = Java.type('utils.Commons');
    * def token = utilities.getToken(appSecret, appAccessKey);
    * def newRoleName = 'new-role-' + utilities.getRandomNumber();
    * def sleep = function(millis){ java.lang.Thread.sleep(millis) }
    * def result = call read('create-role.feature')
    * sleep(2000)

  Scenario: update role name
    Given path '/roles/delete-role/62cd0237ef2402e65ab3d8e3'
    * def role_name =  result.response.data.role
    And header authorization = token
    And request {role: '#(role_name)'}
    When method post
    Then status 200
    And match response.msg == 'Role deleted successfully'