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
    # You can try this API with configuring client parameters in Console Tab
    # below. Test OAuthClientId is
    # 552698b91cae424b9b3ddee14eea6faf564f1b5fb7764854b73b2763e0e68c66
    # and OAuthClientSecret is
    # d0a8b00a3d754ea5a013465bcc23f6efa89e9dfb080a4f4eb460e3306653d92b
    # @param [GetCustomerInfoRequest] body Required parameter: The body of the
    # request.
    # @return GetCustomerInfoResponse response from the API call
    def create_get_customer_info(body)
      # Prepare query url.
      _query_builder = Configuration.get_base_uri
      _query_builder << '/v1/pos/GetCustomerInfo'
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
      OAuth2.apply(_request)
      _context = execute_request(_request)
      validate_response(_context)

      # Return appropriate response type.
      decoded = APIHelper.json_deserialize(_context.response.raw_body)
      GetCustomerInfoResponse.from_hash(decoded)
    end
  end
end
