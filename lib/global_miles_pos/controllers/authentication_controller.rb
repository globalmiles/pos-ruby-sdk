# This file was automatically generated for Global Miles by APIMATIC v2.0
# ( https://apimatic.io ).

module GlobalMilesPos
  # AuthenticationController
  class AuthenticationController < BaseController
    @instance = AuthenticationController.new

    class << self
      attr_accessor :instance
    end

    def instance
      self.class.instance
    end

    # An access token will allow you to make requests for the system. We support
    # only one type of token: client_credentials
    # @param [OAuthRequest] body Required parameter: The body of the request.
    # @return OAuthResponse response from the API call
    def create_authentication(body)
      # Prepare query url.
      _query_builder = Configuration.get_base_uri
      _query_builder << '/oauth/token'
      _query_url = APIHelper.clean_url _query_builder

      # Prepare headers.
      _headers = {
        'accept' => 'application/json',
        'content-type' => 'application/json; charset=utf-8'
      }

      # Prepare and execute HttpRequest.
      _request = @http_client.post(
        _query_url,
        headers: _headers,
        parameters: body.to_json
      )
      _context = execute_request(_request)
      validate_response(_context)

      # Return appropriate response type.
      decoded = APIHelper.json_deserialize(_context.response.raw_body)
      OAuthResponse.from_hash(decoded)
    end
  end
end
