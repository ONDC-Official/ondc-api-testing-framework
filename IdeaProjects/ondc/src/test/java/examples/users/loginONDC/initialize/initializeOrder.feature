Feature: To verify Checkout Functionality
  Background:
    * url env
    #* def token = call read('Access_Token.feature')
    #* def authToken = token.accessToken
    * header Authorization = tokenId
    * header Content-Type = 'application/json'
    * header Accept = 'application/json, text/plain, */*'
    * header Accept-Encoding = 'gzip, deflate, br'
    * def initializeOrder = read('initialize.json')
    * def confirmOrder = read('confirmOrder.json')


  Scenario: To verify order initialization
    Given path '/client/v2/initialize_order'
    And request initializeOrder
    When method Post
    Then status 200
    And print 'response--->',response

  Scenario: To verify order confirmation
    Given path '/client/v2/confirm_order'
    And request confirmOrder
    When method Post
    Then status 200
    And print 'response--->',response

  Scenario: To verify recently placed orders
    Given path 'client/v1/orders'
    When method Get
    Then status 200
    And print 'response--->',response


