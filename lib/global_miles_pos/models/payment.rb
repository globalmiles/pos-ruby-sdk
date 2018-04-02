# This file was automatically generated for Global Miles by APIMATIC v2.0
# ( https://apimatic.io ).

module GlobalMilesPos
  # Payment Model.
  class Payment < BaseModel
    # TODO: Write general description for this method
    # @return [Integer]
    attr_accessor :pay_amount

    # TODO: Write general description for this method
    # @return [Integer]
    attr_accessor :payment_type

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['pay_amount'] = 'payAmount'
      @_hash['payment_type'] = 'paymentType'
      @_hash
    end

    def initialize(pay_amount = nil,
                   payment_type = nil)
      @pay_amount = pay_amount
      @payment_type = payment_type
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      pay_amount = hash['payAmount']
      payment_type = hash['paymentType']

      # Create object from extracted values.
      Payment.new(pay_amount,
                  payment_type)
    end
  end
end
