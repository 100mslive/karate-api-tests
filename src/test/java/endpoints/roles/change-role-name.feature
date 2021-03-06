Feature: update role name

  Background:
    * url baseUrl
    * def utilities = Java.type('utils.Commons');
    * def token = utilities.getToken(appSecret, appAccessKey);
    * def newRoleName = 'new-role-' + utilities.getRandomNumber();
    * def sleep = function(millis){ java.lang.Thread.sleep(millis) }
    * def result = call read('create-role.feature')
    * sleep(2000)

  Scenario: update role name
    Given path '/roles/change-role-name/62cd0237ef2402e65ab3d8e3'
    * def old_name =  result.response.data.role
    * def payload = {old_name: '#(old_name)', new_name: '#(newRoleName)'}
    And header authorization = token
    And request payload
    When method post
    Then status 200
    And print response
    And match response.msg == 'Role name changed successfully'