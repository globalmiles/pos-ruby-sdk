# This file was automatically generated for Global Miles by APIMATIC v2.0
# ( https://apimatic.io ).

module GlobalMilesPos
  # CancelMilePaymentRequest Model.
  class CancelMilePaymentRequest < BaseModel
    # Terminal ID.
    # @return [String]
    attr_accessor :terminal_id

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['terminal_id'] = 'terminal_id'
      @_hash
    end

    def initialize(terminal_id = nil)
      @terminal_id = terminal_id
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      terminal_id = hash['terminal_id']

      # Create object from extracted values.
      CancelMilePaymentRequest.new(terminal_id)
    end
  end
end
