Feature: Auth Generation

  Background:
    * url 'https://identitytoolkit.googleapis.com/v1/accounts:signInWithPassword?key=AIzaSyAKeCcx6Y5WoSJbDb2LrFg3IO66o3VE4uM'

  Scenario: Generate AccessToken
    Given path 'token'
    And form field token_name = 'idToken'
    And form field username = 'romal161193@gmail.com'
    And form field password = 'Pass@123'
    When method post
    Then status 200
    * def accessToken1 = response.access_token
    * print accessToken1
