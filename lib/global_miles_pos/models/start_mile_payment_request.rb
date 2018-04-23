# This file was automatically generated for Global Miles by APIMATIC v2.0
# ( https://apimatic.io ).

module GlobalMilesPos
  # StartMilePaymentRequest Model.
  class StartMilePaymentRequest < BaseModel
    # Total Receipt Amount  ex:12.35 TL == 1235
    # @return [Integer]
    attr_accessor :total_receipt_amount

    # Used Amount that has been used in the shopping  ex:0.85 TL == 85
    # @return [Integer]
    attr_accessor :used_bonus_amount

    # Session based user identification number
    # @return [Integer]
    attr_accessor :recognition_id

    # Terminal code.
    # @return [String]
    attr_accessor :okc_sicil_no

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['total_receipt_amount'] = 'totalReceiptAmount'
      @_hash['used_bonus_amount'] = 'usedBonusAmount'
      @_hash['recognition_id'] = 'recognitionId'
      @_hash['okc_sicil_no'] = 'OKCSicilNo'
      @_hash
    end

    def initialize(total_receipt_amount = nil,
                   used_bonus_amount = nil,
                   recognition_id = nil,
                   okc_sicil_no = nil)
      @total_receipt_amount = total_receipt_amount
      @used_bonus_amount = used_bonus_amount
      @recognition_id = recognition_id
      @okc_sicil_no = okc_sicil_no
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      total_receipt_amount = hash['totalReceiptAmount']
      used_bonus_amount = hash['usedBonusAmount']
      recognition_id = hash['recognitionId']
      okc_sicil_no = hash['OKCSicilNo']

      # Create object from extracted values.
      StartMilePaymentRequest.new(total_receipt_amount,
                                  used_bonus_amount,
                                  recognition_id,
                                  okc_sicil_no)
    end
  end
end