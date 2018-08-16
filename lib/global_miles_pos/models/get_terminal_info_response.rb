# This file was automatically generated for Global Miles by APIMATIC v2.0
# ( https://apimatic.io ).

module GlobalMilesPos
  # GetTerminalInfoResponse Model.
  class GetTerminalInfoResponse < BaseModel
    # 0 Success, 1 and bigger than 1 unsuccessful.
    # @return [Integer]
    attr_accessor :return_code

    # if success return is empty. if unsuccessful it returns error message.
    # @return [String]
    attr_accessor :return_desc

    # Terminal ID.
    # @return [String]
    attr_accessor :terminal_id

    # Header text for the receipt.
    # @return [String]
    attr_accessor :receipt_header

    # Footer text for the receipt.
    # @return [String]
    attr_accessor :receipt_footer

    # Partner ID.
    # @return [Integer]
    attr_accessor :partner_id

    # Branch ID.
    # @return [Integer]
    attr_accessor :branch_id

    # Indicates whether the merchant ID parameter is required in the Transaction
    # Result request.
    # @return [Boolean]
    attr_accessor :merchant_id_mandatory

    # ISO-4217 3-letter default currency code for the partner.
    # @return [String]
    attr_accessor :default_currency

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['return_code'] = 'return_code'
      @_hash['return_desc'] = 'return_desc'
      @_hash['terminal_id'] = 'terminal_id'
      @_hash['receipt_header'] = 'receipt_header'
      @_hash['receipt_footer'] = 'receipt_footer'
      @_hash['partner_id'] = 'partner_id'
      @_hash['branch_id'] = 'branch_id'
      @_hash['merchant_id_mandatory'] = 'merchant_id_mandatory'
      @_hash['default_currency'] = 'default_currency'
      @_hash
    end

    def initialize(return_code = nil,
                   return_desc = nil,
                   terminal_id = nil,
                   receipt_header = nil,
                   receipt_footer = nil,
                   partner_id = nil,
                   branch_id = nil,
                   merchant_id_mandatory = nil,
                   default_currency = nil)
      @return_code = return_code
      @return_desc = return_desc
      @terminal_id = terminal_id
      @receipt_header = receipt_header
      @receipt_footer = receipt_footer
      @partner_id = partner_id
      @branch_id = branch_id
      @merchant_id_mandatory = merchant_id_mandatory
      @default_currency = default_currency
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      return_code = hash['return_code']
      return_desc = hash['return_desc']
      terminal_id = hash['terminal_id']
      receipt_header = hash['receipt_header']
      receipt_footer = hash['receipt_footer']
      partner_id = hash['partner_id']
      branch_id = hash['branch_id']
      merchant_id_mandatory = hash['merchant_id_mandatory']
      default_currency = hash['default_currency']

      # Create object from extracted values.
      GetTerminalInfoResponse.new(return_code,
                                  return_desc,
                                  terminal_id,
                                  receipt_header,
                                  receipt_footer,
                                  partner_id,
                                  branch_id,
                                  merchant_id_mandatory,
                                  default_currency)
    end
  end
end
