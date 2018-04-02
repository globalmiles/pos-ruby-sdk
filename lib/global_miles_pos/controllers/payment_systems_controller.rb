# This file was automatically generated for Global Miles by APIMATIC v2.0
# ( https://apimatic.io ).

module GlobalMilesPos
  # PaymentSystemsController
  class PaymentSystemsController < BaseController
    @instance = PaymentSystemsController.new

    class << self
      attr_accessor :instance
    end

    def instance
      self.class.instance
    end

    # After getting customer info by Get customer Info API and finished the
    # shopping procedure in POS terminal, use this API to complete transaction.
    # @param [String] accept Required parameter: It advertises which content
    # type is able to understand.
    # @param [String] content_type Required parameter: It tells the client what
    # the content type of the returned.
    # @param [String] authorization Required parameter: It includes OAuth2
    # token.
    # @param [TransactionResultRequest] body Required parameter: The body of the
    # request.
    # @return TransactionResultResponse response from the API call
    def create_transaction_result(accept,
                                  content_type,
                                  authorization,
                                  body)
      # Prepare query url.
      _query_builder = Configuration.get_base_uri
      _query_builder << '/v1/pos/TransactionResult'
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
      TransactionResultResponse.from_hash(decoded)
    end
  end
end
