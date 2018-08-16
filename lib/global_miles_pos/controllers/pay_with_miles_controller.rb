# This file was automatically generated for Global Miles by APIMATIC v2.0
# ( https://apimatic.io ).

module GlobalMilesPos
  # PayWithMilesController
  class PayWithMilesController < BaseController
    @instance = PayWithMilesController.new

    class << self
      attr_accessor :instance
    end

    def instance
      self.class.instance
    end

    # In order to cancel payment with miles you can use this endpoint. It allows
    # to cancel payment only related GSM and terminal ID numbers.
    # You can try this endpoint with configuring client parameters in Console
    # Tab below. Test OAuthClientId is
    # b30359c21700fd6f2b91154adcb7b37bab3e7e0a33e22682e5dd149d7a6ac4df
    # and OAuthClientSecret is
    # 4bc4335faad41d6a23cd059e495005f00496a64e34e6187b1d72695a8debd28c
    # @param [Integer] miles_payment_provision_id Required parameter: Provision
    # ID.
    # @param [CancelMilePaymentRequest] body Required parameter: The body of the
    # request.
    # @return CancelMilePaymentResponse response from the API call
    def delete_cancel_mile_payment(miles_payment_provision_id,
                                   body)
      # Prepare query url.
      _query_builder = Configuration.get_base_uri
      _query_builder << '/v2/pos/payments/{miles_payment_provision_id}'
      _query_builder = APIHelper.append_url_with_template_parameters(
        _query_builder,
        'miles_payment_provision_id' => miles_payment_provision_id
      )
      _query_url = APIHelper.clean_url _query_builder

      # Prepare headers.
      _headers = {
        'accept' => 'application/json',
        'content-type' => 'application/json; charset=utf-8'
      }

      # Prepare and execute HttpRequest.
      _request = @http_client.delete(
        _query_url,
        headers: _headers,
        parameters: body.to_json
      )
      OAuth2.apply(_request)
      _context = execute_request(_request)
      validate_response(_context)

      # Return appropriate response type.
      decoded = APIHelper.json_deserialize(_context.response.raw_body)
      CancelMilePaymentResponse.from_hash(decoded)
    end

    # In order to finalize payment with miles use this endpoint. Use the OTP
    # number which is send to user GSM on the Request body.
    # You can try this endpoint with configuring client parameters in Console
    # Tab below. Test OAuthClientId is
    # b30359c21700fd6f2b91154adcb7b37bab3e7e0a33e22682e5dd149d7a6ac4df
    # and OAuthClientSecret is
    # 4bc4335faad41d6a23cd059e495005f00496a64e34e6187b1d72695a8debd28c
    # @param [Integer] miles_payment_provision_id Required parameter: Provision
    # ID.
    # @param [CompleteMilePaymentRequest] body Required parameter: The body of
    # the request.
    # @return CompleteMilePaymentResponse response from the API call
    def update_complete_mile_payment(miles_payment_provision_id,
                                     body)
      # Prepare query url.
      _query_builder = Configuration.get_base_uri
      _query_builder << '/v2/pos/payments/{miles_payment_provision_id}'
      _query_builder = APIHelper.append_url_with_template_parameters(
        _query_builder,
        'miles_payment_provision_id' => miles_payment_provision_id
      )
      _query_url = APIHelper.clean_url _query_builder

      # Prepare headers.
      _headers = {
        'accept' => 'application/json',
        'content-type' => 'application/json; charset=utf-8'
      }

      # Prepare and execute HttpRequest.
      _request = @http_client.put(
        _query_url,
        headers: _headers,
        parameters: body.to_json
      )
      OAuth2.apply(_request)
      _context = execute_request(_request)
      validate_response(_context)

      # Return appropriate response type.
      decoded = APIHelper.json_deserialize(_context.response.raw_body)
      CompleteMilePaymentResponse.from_hash(decoded)
    end

    # After getting customer info's and RecognitionID to start Payment with
    # Miles Use this endpoint.
    # After calling this endpoint successfully OTP code send to customer GSM
    # number. This OTP must be used with Complete endpoint in order to complete
    # payment.
    # You can try this endpoint with configuring client parameters in Console
    # Tab below. Test OAuthClientId is
    # b30359c21700fd6f2b91154adcb7b37bab3e7e0a33e22682e5dd149d7a6ac4df
    # and OAuthClientSecret is
    # 4bc4335faad41d6a23cd059e495005f00496a64e34e6187b1d72695a8debd28c
    # @param [StartMilePaymentRequest] body Required parameter: The body of the
    # request.
    # @return StartMilePaymentResponse response from the API call
    def create_start_mile_payment(body)
      # Prepare query url.
      _query_builder = Configuration.get_base_uri
      _query_builder << '/v2/pos/payments'
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
      StartMilePaymentResponse.from_hash(decoded)
    end

    # Before cancelling the payment with miles this endpoint is used to list the
    # related sale.
    # You can try this endpoint with configuring client parameters in Console
    # Tab below. Test OAuthClientId is
    # b30359c21700fd6f2b91154adcb7b37bab3e7e0a33e22682e5dd149d7a6ac4df
    # and OAuthClientSecret is
    # 4bc4335faad41d6a23cd059e495005f00496a64e34e6187b1d72695a8debd28c
    # @param [String] read_code Required parameter: Customer Identification
    # Method; GSM, FFP ID, CODE or EMAIL.
    # @param [String] read_code_type Required parameter: 1: GSM, 2: FFP ID, 3:
    # CODE, 4: EMAIL
    # @param [String] terminal_id Required parameter: Terminal ID.
    # @return GetMileProvisionsResponse response from the API call
    def get_mile_provisions(read_code,
                            read_code_type,
                            terminal_id)
      # Prepare query url.
      _query_builder = Configuration.get_base_uri
      _query_builder << '/v2/pos/payments'
      _query_builder = APIHelper.append_url_with_query_parameters(
        _query_builder,
        {
          'read_code' => read_code,
          'read_code_type' => read_code_type,
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
      GetMileProvisionsResponse.from_hash(decoded)
    end
  end
end
