# global_miles_pos
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module GlobalMilesPos
  # GetCustomerInfoResponse Model.
  class GetCustomerInfoResponse < BaseModel
    # 0  Success, 1 and bigger than 1 unsuccessful.
    # @return [Integer]
    attr_accessor :return_code

    # if success return is empty. if unsuccessful it returns error message.
    # @return [String]
    attr_accessor :return_desc

    # Session based user identification number.
    # @return [Integer]
    attr_accessor :recognition_id

    # The available miles as an amount that the customer can use in this
    # transaction which is calculated from customer's current miles.
    # @return [Float]
    attr_accessor :available_miles_as_amount

    # Loyalty discounted total amount.
    # @return [Float]
    attr_accessor :loyalty_discounted_total_amount

    # ISO-4217 3-letter currency code.
    # @return [String]
    attr_accessor :currency

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['return_code'] = 'return_code'
      @_hash['return_desc'] = 'return_desc'
      @_hash['recognition_id'] = 'recognition_id'
      @_hash['available_miles_as_amount'] = 'available_miles_as_amount'
      @_hash['loyalty_discounted_total_amount'] =
        'loyalty_discounted_total_amount'
      @_hash['currency'] = 'currency'
      @_hash
    end

    def initialize(return_code = nil,
                   return_desc = nil,
                   recognition_id = nil,
                   available_miles_as_amount = nil,
                   loyalty_discounted_total_amount = nil,
                   currency = nil)
      @return_code = return_code
      @return_desc = return_desc
      @recognition_id = recognition_id
      @available_miles_as_amount = available_miles_as_amount
      @loyalty_discounted_total_amount = loyalty_discounted_total_amount
      @currency = currency
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      return_code = hash['return_code']
      return_desc = hash['return_desc']
      recognition_id = hash['recognition_id']
      available_miles_as_amount = hash['available_miles_as_amount']
      loyalty_discounted_total_amount = hash['loyalty_discounted_total_amount']
      currency = hash['currency']

      # Create object from extracted values.
      GetCustomerInfoResponse.new(return_code,
                                  return_desc,
                                  recognition_id,
                                  available_miles_as_amount,
                                  loyalty_discounted_total_amount,
                                  currency)
    end
  end
end
