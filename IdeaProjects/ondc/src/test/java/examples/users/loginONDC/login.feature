Feature: To verify login fuctionality

  Background:

#  Scenario: To verify Login Page
#    Given path 'login'
#    And request loginLanding
#    When method Post
#    Then status 200
#
#    * def first = response[0]
#
#    Given path 'users', first.id
#    When method get
#    Then status 200

  Scenario: To verify login with valid credentials
    Given path 'https://identitytoolkit.googleapis.com/v1/accounts:lookup?key=AIzaSyAKeCcx6Y5WoSJbDb2LrFg3IO66o3VE4uM'
    And request loginCredentials
    When method Post
    Then status 200
    And print 'response--->',response




#  Scenario Outline: To verify login with valid credentials
#    Given path 'login'
#    And request loginCredentials
#    When param Email = '<email>'
#    And param Password = '<password>'
#    And method Post
#    Then status 200
#    And print 'response--->',response
#
#    Examples:
#    |email|password|
#    |romal161193@gmail.com|Pass@123|

#
  
  
#  Scenario: To verify login with valid credentials
#    * def user =
#      """
#      {
#        "name": "Test User",
#        "username": "testuser",
#        "email": "test@user.com",
#        "address": {
#          "street": "Has No Name",
#          "suite": "Apt. 123",
#          "city": "Electri",
#          "zipcode": "54321-6789"
#        }
#      }
#      """
#
#    Given url 'https://jsonplaceholder.typicode.com/users'
#    And request user
#    When method post
#    Then status 201
#
#    * def id = response.id
#    * print 'created id is: ', id
#
#    Given path id
#    # When method get
#    # Then status 200
#    # And match response contains user
#