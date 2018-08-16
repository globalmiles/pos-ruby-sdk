# This file was automatically generated for Global Miles by APIMATIC v2.0
# ( https://apimatic.io ).

module GlobalMilesPos
  # CompleteMilePaymentRequest Model.
  class CompleteMilePaymentRequest < BaseModel
    # Terminal ID.
    # @return [String]
    attr_accessor :terminal_id

    # One time password that sends to customer phone.
    # @return [String]
    attr_accessor :otp

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['terminal_id'] = 'terminal_id'
      @_hash['otp'] = 'otp'
      @_hash
    end

    def initialize(terminal_id = nil,
                   otp = nil)
      @terminal_id = terminal_id
      @otp = otp
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      terminal_id = hash['terminal_id']
      otp = hash['otp']

      # Create object from extracted values.
      CompleteMilePaymentRequest.new(terminal_id,
                                     otp)
    end
  end
end
