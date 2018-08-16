# This file was automatically generated for Global Miles by APIMATIC v2.0
# ( https://apimatic.io ).

module GlobalMilesPos
  # StartMilePaymentRequest Model.
  class StartMilePaymentRequest < BaseModel
    # Total receipt amount.
    # @return [Float]
    attr_accessor :total_receipt_amount

    # Used amount that has been used in the shopping.
    # @return [Float]
    attr_accessor :used_miles_as_amount

    # ISO-4217 3-letter currency code.
    # @return [String]
    attr_accessor :currency

    # Session based user identification number.
    # @return [Integer]
    attr_accessor :recognition_id

    # Terminal ID.
    # @return [String]
    attr_accessor :terminal_id

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['total_receipt_amount'] = 'total_receipt_amount'
      @_hash['used_miles_as_amount'] = 'used_miles_as_amount'
      @_hash['currency'] = 'currency'
      @_hash['recognition_id'] = 'recognition_id'
      @_hash['terminal_id'] = 'terminal_id'
      @_hash
    end

    def initialize(total_receipt_amount = nil,
                   used_miles_as_amount = nil,
                   currency = nil,
                   recognition_id = nil,
                   terminal_id = nil)
      @total_receipt_amount = total_receipt_amount
      @used_miles_as_amount = used_miles_as_amount
      @currency = currency
      @recognition_id = recognition_id
      @terminal_id = terminal_id
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      total_receipt_amount = hash['total_receipt_amount']
      used_miles_as_amount = hash['used_miles_as_amount']
      currency = hash['currency']
      recognition_id = hash['recognition_id']
      terminal_id = hash['terminal_id']

      # Create object from extracted values.
      StartMilePaymentRequest.new(total_receipt_amount,
                                  used_miles_as_amount,
                                  currency,
                                  recognition_id,
                                  terminal_id)
    end
  end
end
