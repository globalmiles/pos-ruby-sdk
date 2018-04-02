# This file was automatically generated for Global Miles by APIMATIC v2.0
# ( https://apimatic.io ).

module GlobalMilesPos
  # BonusPaymentsController
  class BonusPaymentsController < BaseController
    @instance = BonusPaymentsController.new

    class << self
      attr_accessor :instance
    end

    def instance
      self.class.instance
    end

    # After getting customer info's and RecognitionID to start Payment with
    # Miles Use this API.
    # After calling this API successfully OTP code send to cutomer GSM number.
    # This OTP must be used with Complete API in order to complete sale.
    # @param [String] accept Required parameter: It advertises which content
    # type is able to understand.
    # @param [String] content_type Required parameter: It tells the client what
    # the content type of the returned.
    # @param [String] authorization Required parameter: It includes OAuth2
    # token.
    # @param [StartBonusPaymentRequest] body Required parameter: The body of the
    # request.
    # @return StartBonusPaymentResponse response from the API call
    def create_start_bonus_payment(accept,
                                   content_type,
                                   authorization,
                                   body)
      # Prepare query url.
      _query_builder = Configuration.get_base_uri
      _query_builder << '/v1/pos/StartBonusPayment'
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
      StartBonusPaymentResponse.from_hash(decoded)
    end

    # In order to finalise payment with Miles use this API.Use the OTP number 
    # which is send to user GSM on the Request body.
    # @param [String] accept Required parameter: It advertises which content
    # type is able to understand.
    # @param [String] content_type Required parameter: It tells the client what
    # the content type of the returned.
    # @param [String] authorization Required parameter: It includes OAuth2
    # token.
    # @param [CompleteBonusPaymentRequest] body Required parameter: The body of
    # the request.
    # @return CompleteBonusPaymentResponse response from the API call
    def create_complete_bonus_payment(accept,
                                      content_type,
                                      authorization,
                                      body)
      # Prepare query url.
      _query_builder = Configuration.get_base_uri
      _query_builder << '/v1/pos/CompleteBonusPayment'
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
      CompleteBonusPaymentResponse.from_hash(decoded)
    end

    # In order to cancel payment with miles you can use this API. It allows to
    # cancel payment only related GSM and terminal ID numbers.
    # @param [String] accept Required parameter: It advertises which content
    # type is able to understand.
    # @param [String] content_type Required parameter: It tells the client what
    # the content type of the returned.
    # @param [String] authorization Required parameter: It includes OAuth2
    # token.
    # @param [CancelBonusPaymentRequest] body Required parameter: The body of
    # the request.
    # @return CancelBonusPaymentResponse response from the API call
    def create_cancel_bonus_payment(accept,
                                    content_type,
                                    authorization,
                                    body)
      # Prepare query url.
      _query_builder = Configuration.get_base_uri
      _query_builder << '/v1/pos/CancelBonusPayment'
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
      CancelBonusPaymentResponse.from_hash(decoded)
    end

    # Before cancelling the payment with Miles this API is used to list the
    # related sale.
    # @param [String] accept Required parameter: It advertises which content
    # type is able to understand.
    # @param [String] content_type Required parameter: It tells the client what
    # the content type of the returned.
    # @param [String] authorization Required parameter: It includes OAuth2
    # token.
    # @param [GetBonusProvisionsRequest] body Required parameter: The body of
    # the request.
    # @return GetBonusProvisionsResponse response from the API call
    def create_get_bonus_provisions(accept,
                                    content_type,
                                    authorization,
                                    body)
      # Prepare query url.
      _query_builder = Configuration.get_base_uri
      _query_builder << '/v1/pos/GetBonusProvisions'
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
      GetBonusProvisionsResponse.from_hash(decoded)
    end
  end
end