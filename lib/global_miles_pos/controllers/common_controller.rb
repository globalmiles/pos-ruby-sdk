# This file was automatically generated for Global Miles by APIMATIC v2.0
# ( https://apimatic.io ).

module GlobalMilesPos
  # CommonController
  class CommonController < BaseController
    @instance = CommonController.new

    class << self
      attr_accessor :instance
    end

    def instance
      self.class.instance
    end

    # This API will help you to retrieve customer's mil quantity and unique
    # identifier value.Unique identifier value must be used by Transaction
    # Result API in order to complete shopping.
    # @param [String] accept Required parameter: It advertises which content
    # type is able to understand.
    # @param [String] content_type Required parameter: It tells the client what
    # the content type of the returned.
    # @param [String] authorization Required parameter: It includes OAuth2
    # token.
    # @param [GetCustomerInfoRequest] body Required parameter: The body of the
    # request.
    # @return GetCustomerInfoResponse response from the API call
    def create_get_customer_info(accept,
                                 content_type,
                                 authorization,
                                 body)
      # Prepare query url.
      _query_builder = Configuration.get_base_uri
      _query_builder << '/v1/pos/GetCustomerInfo'
      _query_url = APIHelper.clean_url _query_builder

      # Prepare headers.
      _headers = {
        'Accept' => accept,
        'Content-Type' => content_type,
        'Authorization' => authorization
      }

      # Prepare and execute HttpRequest.
      _request = @http_client.post(
        _query_url,
        headers: _headers,
        parameters: body.to_json
      )
      OAuth2.apply(_request)
      _context = execute_request(_request)
      validate_response(_context)

      # Return appropriate response type.
      decoded = APIHelper.json_deserialize(_context.response.raw_body)
      GetCustomerInfoResponse.from_hash(decoded)
    end
  end
end
