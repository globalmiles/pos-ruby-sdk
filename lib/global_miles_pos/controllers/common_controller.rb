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

    # This endpoint will help you to get terminal settings in order to use
    # internal operations.
    # You can try this endpoint with configuring client parameters in Console
    # Tab below. Test OAuthClientId is
    # b30359c21700fd6f2b91154adcb7b37bab3e7e0a33e22682e5dd149d7a6ac4df
    # and OAuthClientSecret is
    # 4bc4335faad41d6a23cd059e495005f00496a64e34e6187b1d72695a8debd28c
    # @param [String] terminal_id Required parameter: Terminal ID.
    # @return GetTerminalInfoResponse response from the API call
    def get_terminal_info(terminal_id)
      # Prepare query url.
      _query_builder = Configuration.get_base_uri
      _query_builder << '/v2/pos/terminal_info'
      _query_builder = APIHelper.append_url_with_query_parameters(
        _query_builder,
        {
          'terminal_id' => terminal_id
        },
        array_serialization: Configuration.array_serialization
      )
      _query_url = APIHelper.clean_url _query_builder

      # Prepare headers.
      _headers = {
        'accept' => 'application/json'
      }

      # Prepare and execute HttpRequest.
      _request = @http_client.get(
        _query_url,
        headers: _headers
      )
      OAuth2.apply(_request)
      _context = execute_request(_request)
      validate_response(_context)

      # Return appropriate response type.
      decoded = APIHelper.json_deserialize(_context.response.raw_body)
      GetTerminalInfoResponse.from_hash(decoded)
    end

    # This endpoint will help you to get customer's miles amount as a currency
    # and unique identifier value. Unique identifier value must be used by
    # Transaction Result endpint in order to complete shopping.
    # You can try this API with configuring client parameters in Console Tab
    # below. Test OAuthClientId is
    # b30359c21700fd6f2b91154adcb7b37bab3e7e0a33e22682e5dd149d7a6ac4df
    # and OAuthClientSecret is
    # 4bc4335faad41d6a23cd059e495005f00496a64e34e6187b1d72695a8debd28c
    # You can try this API with configuring client parameters in Console Tab
    # below. Test OAuthClientId is
    # b30359c21700fd6f2b91154adcb7b37bab3e7e0a33e22682e5dd149d7a6ac4df
    # and OAuthClientSecret is
    # 4bc4335faad41d6a23cd059e495005f00496a64e34e6187b1d72695a8debd28c
    # @param [String] read_code Required parameter: Customer Identification
    # Method; GSM, FFP ID, CODE or EMAIL
    # @param [String] read_code_type Required parameter: 1: GSM, 2: FFP ID, 3:
    # CODE, 4: EMAIL
    # @param [Float] total_amount Required parameter: Total receipt amount.
    # @param [Float] total_vat_amount Required parameter: Total tax value.
    # @param [String] currency Required parameter: ISO-4217 3-letter currency
    # code.
    # @param [Integer] partner_id Required parameter: Partner ID.
    # @param [Integer] branch_id Required parameter: Branch ID.
    # @param [String] terminal_id Required parameter: Terminal ID.
    # @return GetCustomerInfoResponse response from the API call
    def get_customer_info(read_code,
                          read_code_type,
                          total_amount,
                          total_vat_amount,
                          currency,
                          partner_id,
                          branch_id,
                          terminal_id)
      # Prepare query url.
      _query_builder = Configuration.get_base_uri
      _query_builder << '/v2/pos/customer_info'
      _query_builder = APIHelper.append_url_with_query_parameters(
        _query_builder,
        {
          'read_code' => read_code,
          'read_code_type' => read_code_type,
          'total_amount' => total_amount,
          'total_vat_amount' => total_vat_amount,
          'currency' => currency,
          'partner_id' => partner_id,
          'branch_id' => branch_id,
          'terminal_id' => terminal_id
        },
        array_serialization: Configuration.array_serialization
      )
      _query_url = APIHelper.clean_url _query_builder

      # Prepare headers.
      _headers = {
        'accept' => 'application/json'
      }

      # Prepare and execute HttpRequest.
      _request = @http_client.get(
        _query_url,
        headers: _headers
      )
      OAuth2.apply(_request)
      _context = execute_request(_request)
      validate_response(_context)

      # Return appropriate response type.
      decoded = APIHelper.json_deserialize(_context.response.raw_body)
      GetCustomerInfoResponse.from_hash(decoded)
    end

    # This endpoint will help you to upload receipt pictures which is related
    # with a recognition ID and a transaction result.
    # You can try this endoint with configuring client parameters in Console Tab
    # below. Test OAuthClientId is
    # b30359c21700fd6f2b91154adcb7b37bab3e7e0a33e22682e5dd149d7a6ac4df
    # and OAuthClientSecret is
    # 4bc4335faad41d6a23cd059e495005f00496a64e34e6187b1d72695a8debd28c
    # You can try this API with configuring client parameters in Console Tab
    # below. Test OAuthClientId is
    # b30359c21700fd6f2b91154adcb7b37bab3e7e0a33e22682e5dd149d7a6ac4df
    # and OAuthClientSecret is
    # 4bc4335faad41d6a23cd059e495005f00496a64e34e6187b1d72695a8debd28c
    # @param [ReceiptPictureRequest] body Required parameter: The body of the
    # request.
    # @return ReceiptPictureResponse response from the API call
    def upload_receipt_pictures(body)
      # Prepare query url.
      _query_builder = Configuration.get_base_uri
      _query_builder << '/v2/pos/receipt_pictures'
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
      ReceiptPictureResponse.from_hash(decoded)
    end
  end
end
