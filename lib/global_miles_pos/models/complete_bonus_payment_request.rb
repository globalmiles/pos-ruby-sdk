# This file was automatically generated for Global Miles by APIMATIC v2.0
# ( https://apimatic.io ).

module GlobalMilesPos
  # CompleteBonusPaymentRequest Model.
  class CompleteBonusPaymentRequest < BaseModel
    # Provision ID
    # @return [String]
    attr_accessor :bonus_payment_provision_id

    # One time password that sends to customer phone
    # @return [String]
    attr_accessor :otp

    # Terminal code.
    # @return [String]
    attr_accessor :okc_sicil_no

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['bonus_payment_provision_id'] = 'bonusPaymentProvisionId'
      @_hash['otp'] = 'OTP'
      @_hash['okc_sicil_no'] = 'OKCSicilNo'
      @_hash
    end

    def initialize(bonus_payment_provision_id = nil,
                   otp = nil,
                   okc_sicil_no = nil)
      @bonus_payment_provision_id = bonus_payment_provision_id
      @otp = otp
      @okc_sicil_no = okc_sicil_no
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      bonus_payment_provision_id = hash['bonusPaymentProvisionId']
      otp = hash['OTP']
      okc_sicil_no = hash['OKCSicilNo']

      # Create object from extracted values.
      CompleteBonusPaymentRequest.new(bonus_payment_provision_id,
                                      otp,
                                      okc_sicil_no)
    end
  end
end
