Feature: Account Base
  Background:
    * url baseUrl
    * header Authorization = 'Client-ID ' + clientId
  Scenario: Account Base
    Given path "3/account/"
    And   path username
    When method get
    Then status 200