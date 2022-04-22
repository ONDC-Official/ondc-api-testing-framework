Feature: To verify Checkout Functionality
  Background:
    * url env
    #* def token = call read('Access_Token.feature')
    #* def authToken = token.accessToken
    * header Authorization = tokenId
    * header Content-Type = 'application/json'
    * header Accept = 'application/json, text/plain, */*'
    * header Accept-Encoding = 'gzip, deflate, br'
    * def checkout = read('checkout.json')
    * def billingAddress = read('billingAddress.json')
    * def deliveryAddress = read('deliveryAddress.json')


  Scenario: To verify checkout with added products
    Given path '/client/v2/get_quote'
    And request checkout
    When method Post
    Then status 200
    And print 'response--->',response

  Scenario: To verify available delivery address
    Given path '/client/v1/delivery_address'
    When method get
    Then status 200
    And print 'response--->',response

  Scenario: To verify available billing address
    Given path '/client/v1/billing_details'
    When method get
    Then status 200
    And print 'response--->',response

  Scenario: To verify adding billing Address
    Given path '/client/v1/billing_details'
    And request billingAddress
    When method Post
    Then status 200
    And print 'response--->',response

  Scenario: To verify adding Delivery Address
    Given path '/client/v1/delivery_details'
    And request deliveryAddress
    When method Post
    Then status 200
    And print 'response--->',response