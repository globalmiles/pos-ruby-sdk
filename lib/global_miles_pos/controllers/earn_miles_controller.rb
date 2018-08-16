# This file was automatically generated for Global Miles by APIMATIC v2.0
# ( https://apimatic.io ).

module GlobalMilesPos
  # EarnMilesController
  class EarnMilesController < BaseController
    @instance = EarnMilesController.new

    class << self
      attr_accessor :instance
    end

    def instance
      self.class.instance
    end

    # After getting customer info by Get Customer Info endpoint and finished the
    # shopping procedure in POS terminal, use this endpoint to complete
    # transaction.
    # You can try this endpoint with configuring client parameters in Console
    # Tab below. Test OAuthClientId is
    # b30359c21700fd6f2b91154adcb7b37bab3e7e0a33e22682e5dd149d7a6ac4df
    # and OAuthClientSecret is
    # 4bc4335faad41d6a23cd059e495005f00496a64e34e6187b1d72695a8debd28c
    # @param [TransactionResultRequest] body Required parameter: The body of the
    # request.
    # @return TransactionResultResponse response from the API call
    def create_transaction_result(body)
      # Prepare query url.
      _query_builder = Configuration.get_base_uri
      _query_builder << '/v2/pos/transaction_result'
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
      TransactionResultResponse.from_hash(decoded)
    end
  end
end
