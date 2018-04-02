# This file was automatically generated for Global Miles by APIMATIC v2.0
# ( https://apimatic.io ).

module GlobalMilesPos
  # OAuthAuthorizationController
  class OAuthAuthorizationController < BaseController
    @instance = OAuthAuthorizationController.new

    class << self
      attr_accessor :instance
    end

    def instance
      self.class.instance
    end

    # Create a new OAuth 2 token.
    # @param [String] authorization Required parameter: Authorization header in
    # Basic auth format
    # @param [String] scope Optional parameter: Requested scopes as a
    # space-delimited list.
    # @param [Hash] _field_parameters Additional optional form parameters are
    # supported by this endpoint.
    # @return OAuthToken response from the API call
    def create_request_token(authorization,
                             scope = nil,
                             _field_parameters = nil)
      # Prepare query url.
      _query_builder = Configuration.get_base_uri
      _query_builder << '/oauth/token'
      _query_url = APIHelper.clean_url _query_builder

      # Prepare headers.
      _headers = {
        'accept' => 'application/json',
        'Authorization' => authorization
      }

      # Prepare form parameters.
      _parameters = {
        'grant_type' => 'client_credentials',
        'scope' => scope
      }
      if !_parameters.nil? && !_field_parameters.nil?
        _parameters.merge!(_field_parameters)
      end
      _parameters = APIHelper.form_encode_parameters(_parameters)

      # Prepare and execute HttpRequest.
      _request = @http_client.post(
        _query_url,
        headers: _headers,
        parameters: _parameters
      )
      _context = execute_request(_request)

      # Validate response against endpoint and global error codes.
      if _context.response.status_code == 400
        raise OAuthProviderException.new(
          'OAuth 2 provider returned an error.',
          _context
        )
      elsif _context.response.status_code == 401
        raise OAuthProviderException.new(
          'OAuth 2 provider says client authentication failed.',
          _context
        )
      end
      validate_response(_context)

      # Return appropriate response type.
      decoded = APIHelper.json_deserialize(_context.response.raw_body)
      OAuthToken.from_hash(decoded)
    end
  end
end