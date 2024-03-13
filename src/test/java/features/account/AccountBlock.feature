Feature: Account Blocks

  Background:
    * url baseUrl
    * header Authorization = 'Bearer ' + accessToken
    * header Accept  = 'application/vnd.api+json'


  Scenario: Get all accounts block

    Given path '3/account/me/block'
    When method get
    Then status 200


  Scenario Outline : Account Block Create

    Given path 'account/v1/<Username>/block'
    When method post
    Then status 201

    Examples:
      |Username        |
      |ghostinspector  |
      |lisa            |


