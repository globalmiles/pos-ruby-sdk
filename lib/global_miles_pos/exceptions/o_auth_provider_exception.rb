# This file was automatically generated for Global Miles by APIMATIC v2.0
# ( https://apimatic.io ).

module GlobalMilesPos
  # OAuth 2 Authorization endpoint exception
  class OAuthProviderException < APIException
    # Error code
    # @return [OAuthProviderErrorEnum]
    attr_accessor :error

    # Human-readable text providing additional information on error.
    # Used to assist the client developer in understanding the error that
    # occurred.
    # @return [String]
    attr_accessor :error_description

    # A URI identifying a human-readable web page with information about the
    # error, used to provide the client developer with additional information
    # about the error
    # @return [String]
    attr_accessor :error_uri

    # The constructor.
    # @param [String] The reason for raising an exception.
    # @param [HttpContext] The HttpContext of the API call.
    def initialize(reason, context)
      super(reason, context)
      hash = APIHelper.json_deserialize(@context.response.raw_body)
      unbox(hash)
    end

    # Populates this object by extracting properties from a hash.
    # @param [Hash] The deserialized response sent by the server in the
    # response body.
    def unbox(hash)
      @error = hash['error']
      @error_description = hash['error_description']
      @error_uri = hash['error_uri']
    end
  end
end
