# This file was automatically generated for Global Miles by APIMATIC v2.0
# ( https://apimatic.io ).

module GlobalMilesPos
  # MileProvision Model.
  class MileProvision < BaseModel
    # Provision ID
    # @return [Integer]
    attr_accessor :miles_payment_provision_id

    # Used amount
    # @return [Float]
    attr_accessor :used_miles_as_amount

    # ISO-4217 3-letter currency code.
    # @return [String]
    attr_accessor :currency

    # Date time of the mile provision.
    # @return [String]
    attr_accessor :date_time

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['miles_payment_provision_id'] = 'miles_payment_provision_id'
      @_hash['used_miles_as_amount'] = 'used_miles_as_amount'
      @_hash['currency'] = 'currency'
      @_hash['date_time'] = 'date_time'
      @_hash
    end

    def initialize(miles_payment_provision_id = nil,
                   used_miles_as_amount = nil,
                   currency = nil,
                   date_time = nil)
      @miles_payment_provision_id = miles_payment_provision_id
      @used_miles_as_amount = used_miles_as_amount
      @currency = currency
      @date_time = date_time
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      miles_payment_provision_id = hash['miles_payment_provision_id']
      used_miles_as_amount = hash['used_miles_as_amount']
      currency = hash['currency']
      date_time = hash['date_time']

      # Create object from extracted values.
      MileProvision.new(miles_payment_provision_id,
                        used_miles_as_amount,
                        currency,
                        date_time)
    end
  end
end
