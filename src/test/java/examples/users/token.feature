Feature: Générer un jeton d'accès OAuth 2.0

  Background:
    * url baseUrl
    * path "oauth2/token"
    * form field refresh_token = refreshToken
    * form field client_id = clientId
    * form field client_secret = clientSecret
    * form field grant_type = 'refresh_token'

  Scenario: Generate acces token
    * method post
    * status 200
    * def accessToken = response.access_token
    * print 'Jeton d\'accès :', accessToken
