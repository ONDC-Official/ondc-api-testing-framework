Feature: To verify Search Functionality
  Background:
    * url env
    #* def token = call read('Access_Token.feature')
    #* def authToken = token.accessToken
    * header Authorization = tokenId
    * header Content-Type = 'application/json'
    * header Accept = 'application/json, text/plain, */*'
    * header Accept-Encoding = 'gzip, deflate, br'
    * def productSearch = read('searchProduct.json')
    * def productSearchByProvider = read('searchProductByProvider.json')
    * def productSearchByCategory = read('searchProductByCategory.json')
    * def productSearchByLocation = read('searchProductByLocation.json')


  Scenario: To verify search product by Product Name
    Given path '/client/v1/search'
    And request productSearch
    When method Post
    Then status 200
    And print 'response--->',response

  Scenario: To verify search product by Provider
    Given path '/client/v1/search'
    And request productSearchByProvider
    When method Post
    Then status 200
    And print 'response--->',response

  Scenario: To verify search product by Category
    Given path '/client/v1/search'
    And request productSearchByCategory
    When method Post
    Then status 200
    And print 'response--->',response

  Scenario: To verify search product by Product Name and Location
    Given path '/client/v1/search'
    And request productSearchByLocation
    When method Post
    Then status 200
    And print 'response--->',response
   # And print response.context.message_id
    * def message_Id = response.context.message_id
    And print message_Id


  Scenario: To verify get products
    * def query = {messageId:message_Id}
    Given path '/client/v1/on_search'
    And params query
    When method Get
    Then status 200
    And print 'response--->',response





