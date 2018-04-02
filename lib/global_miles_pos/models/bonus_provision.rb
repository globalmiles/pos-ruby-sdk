# This file was automatically generated for Global Miles by APIMATIC v2.0
# ( https://apimatic.io ).

module GlobalMilesPos
  # BonusProvision Model.
  class BonusProvision < BaseModel
    # Provision ID
    # @return [String]
    attr_accessor :bonus_payment_provision_id

    # Used Bonus Amount
    # @return [Integer]
    attr_accessor :used_bonus_amount

    # Date/time
    # @return [String]
    attr_accessor :date_time

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['bonus_payment_provision_id'] = 'bonusPaymentProvisionId'
      @_hash['used_bonus_amount'] = 'usedBonusAmount'
      @_hash['date_time'] = 'dateTime'
      @_hash
    end

    def initialize(bonus_payment_provision_id = nil,
                   used_bonus_amount = nil,
                   date_time = nil)
      @bonus_payment_provision_id = bonus_payment_provision_id
      @used_bonus_amount = used_bonus_amount
      @date_time = date_time
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      bonus_payment_provision_id = hash['bonusPaymentProvisionId']
      used_bonus_amount = hash['usedBonusAmount']
      date_time = hash['dateTime']

      # Create object from extracted values.
      BonusProvision.new(bonus_payment_provision_id,
                         used_bonus_amount,
                         date_time)
    end
  end
end
