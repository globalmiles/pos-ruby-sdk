# This file was automatically generated for Global Miles by APIMATIC v2.0
# ( https://apimatic.io ).
require 'base64'

module GlobalMilesPos
  # Utility class for OAuth 2 authorization and token management.
  class OAuth2
    # Add OAuth2 authentication to the http request.
    # @param [HttpRequest] The HttpRequest object to which authentication will
    # be added.
    def self.apply(http_request)
      check_auth
      token = Configuration.o_auth_token.access_token
      http_request.headers['Authorization'] = "Bearer #{token}"
    end

    # Sets the token object of the configuation class.
    # @param [OAuthToken] The OAuth token object.
    def self.update_token(token)
      token.expiry = (Time.now.to_i + token.expires_in.to_i) if token.expires_in
      Configuration.o_auth_token = token
      Configuration.o_auth_callback.call(token) if Configuration.o_auth_callback
    end

    # Builds the basic auth header for endpoints in the
    # OAuth Authorization Controller.
    def self.build_basic_auth_header
      value = "#{Configuration.o_auth_client_id}:" \
              "#{Configuration.o_auth_client_secret}"
      encoded = Base64.strict_encode64(value)
      "Basic #{encoded}"
    end

    # Checks if OAuth token is valid.
    def self.check_auth
      authorize if Configuration.o_auth_token.nil?
    end

    # Authorizes the client.
    # @param [String | Array of String] Any scopes for the authentication token.
    # @param [Hash] Any additional form parameters.
    def self.authorize(scope: nil, additional_params: nil)
      token = OAuthAuthorizationController.instance.create_request_token(
        build_basic_auth_header,
        scope ? Array(scope).compact.join(' ') : nil,
        additional_params
      )
      update_token(token)
      token
    end
  end
end
