# This file was automatically generated for Global Miles by APIMATIC v2.0
# ( https://apimatic.io ).

module GlobalMilesPos
  # StartMilePaymentResponse Model.
  class StartMilePaymentResponse < BaseModel
    # 0  Success, 1 and bigger than 1 unsuccessful
    # @return [Integer]
    attr_accessor :return_code

    # if success return is empty. if unsuccessful it returns error message
    # @return [String]
    attr_accessor :return_desc

    # Provision ID for the payment
    # @return [String]
    attr_accessor :bonus_payment_provision_id

    # Is a one-time password required?
    # @return [Boolean]
    attr_accessor :otp_needed

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['return_code'] = 'returnCode'
      @_hash['return_desc'] = 'returnDesc'
      @_hash['bonus_payment_provision_id'] = 'bonusPaymentProvisionId'
      @_hash['otp_needed'] = 'OTPNeeded'
      @_hash
    end

    def initialize(return_code = nil,
                   return_desc = nil,
                   bonus_payment_provision_id = nil,
                   otp_needed = nil)
      @return_code = return_code
      @return_desc = return_desc
      @bonus_payment_provision_id = bonus_payment_provision_id
      @otp_needed = otp_needed
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      return_code = hash['returnCode']
      return_desc = hash['returnDesc']
      bonus_payment_provision_id = hash['bonusPaymentProvisionId']
      otp_needed = hash['OTPNeeded']

      # Create object from extracted values.
      StartMilePaymentResponse.new(return_code,
                                   return_desc,
                                   bonus_payment_provision_id,
                                   otp_needed)
    end
  end
end
