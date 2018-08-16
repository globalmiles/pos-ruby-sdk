# This file was automatically generated for Global Miles by APIMATIC v2.0
# ( https://apimatic.io ).

module GlobalMilesPos
  # Payment Model.
  class Payment < BaseModel
    # Amount of the payment.
    # @return [Float]
    attr_accessor :pay_amount

    # Type of the payment.
    # @return [String]
    attr_accessor :payment_type

    # Provision ID for pay with miles.
    # @return [Integer]
    attr_accessor :miles_payment_provision_id

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['pay_amount'] = 'pay_amount'
      @_hash['payment_type'] = 'payment_type'
      @_hash['miles_payment_provision_id'] = 'miles_payment_provision_id'
      @_hash
    end

    def initialize(pay_amount = nil,
                   payment_type = nil,
                   miles_payment_provision_id = nil)
      @pay_amount = pay_amount
      @payment_type = payment_type
      @miles_payment_provision_id = miles_payment_provision_id
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      pay_amount = hash['pay_amount']
      payment_type = hash['payment_type']
      miles_payment_provision_id = hash['miles_payment_provision_id']

      # Create object from extracted values.
      Payment.new(pay_amount,
                  payment_type,
                  miles_payment_provision_id)
    end
  end
end
