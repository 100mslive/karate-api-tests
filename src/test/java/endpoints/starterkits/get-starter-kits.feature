Feature: get starter kits tests
  Background:
    * url 'https://cms-qa.100ms.live/api/'

  Scenario: get all users and then get the first user by id
    Given path '/starter-kits'
    And param  populate = 'languageTags,image,languageTags.icon'
    When method get
    Then status 200
    And print response