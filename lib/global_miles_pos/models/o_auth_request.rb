# This file was automatically generated for Global Miles by APIMATIC v2.0
# ( https://apimatic.io ).

module GlobalMilesPos
  # Representing an OAuth request.
  class OAuthRequest < BaseModel
    # ID of the client which is provided by Global Miles.
    # @return [String]
    attr_accessor :client_id

    # Secret of the client which is provided by Global Miles.
    # @return [String]
    attr_accessor :client_secret

    # Type of the OAuth flows. We support only one type of token:
    # client_credentials
    # @return [String]
    attr_accessor :grant_type

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['client_id'] = 'client_id'
      @_hash['client_secret'] = 'client_secret'
      @_hash['grant_type'] = 'grant_type'
      @_hash
    end

    def initialize(client_id = nil,
                   client_secret = nil,
                   grant_type = nil)
      @client_id = client_id
      @client_secret = client_secret
      @grant_type = grant_type
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      client_id = hash['client_id']
      client_secret = hash['client_secret']
      grant_type = hash['grant_type']

      # Create object from extracted values.
      OAuthRequest.new(client_id,
                       client_secret,
                       grant_type)
    end
  end
end
