# This file was automatically generated for Global Miles by APIMATIC v2.0
# ( https://apimatic.io ).

module GlobalMilesPos
  # CompleteMilePaymentRequest Model.
  class CompleteMilePaymentRequest < BaseModel
    # Provision ID
    # @return [String]
    attr_accessor :bonus_payment_provision_id

    # Terminal code.
    # @return [String]
    attr_accessor :okc_sicil_no

    # One time password that sends to customer phone
    # @return [String]
    attr_accessor :otp

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['bonus_payment_provision_id'] = 'bonusPaymentProvisionId'
      @_hash['okc_sicil_no'] = 'OKCSicilNo'
      @_hash['otp'] = 'OTP'
      @_hash
    end

    def initialize(bonus_payment_provision_id = nil,
                   okc_sicil_no = nil,
                   otp = nil)
      @bonus_payment_provision_id = bonus_payment_provision_id
      @okc_sicil_no = okc_sicil_no
      @otp = otp
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      bonus_payment_provision_id = hash['bonusPaymentProvisionId']
      okc_sicil_no = hash['OKCSicilNo']
      otp = hash['OTP']

      # Create object from extracted values.
      CompleteMilePaymentRequest.new(bonus_payment_provision_id,
                                     okc_sicil_no,
                                     otp)
    end
  end
end
