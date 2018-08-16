# This file was automatically generated for Global Miles by APIMATIC v2.0
# ( https://apimatic.io ).

module GlobalMilesPos
  # TransactionResultRequest Model.
  class TransactionResultRequest < BaseModel
    # Total receipt amount.
    # @return [Float]
    attr_accessor :total_receipt_amount

    # Total tax amount.
    # @return [Float]
    attr_accessor :total_vat_amount

    # ISO-4217 3-letter currency code.
    # @return [String]
    attr_accessor :currency

    # Partner ID.
    # @return [Integer]
    attr_accessor :partner_id

    # Branch ID.
    # @return [Integer]
    attr_accessor :branch_id

    # Terminal ID.
    # @return [String]
    attr_accessor :terminal_id

    # Receipt number.
    # @return [String]
    attr_accessor :receipt_number

    # Extra number 1.
    # @return [String]
    attr_accessor :extra_number_1

    # Extra number 2.
    # @return [String]
    attr_accessor :extra_number_2

    # Session based identification number.
    # @return [Integer]
    attr_accessor :recognition_id

    # Receipt type (Invoice , Food ..)
    # @return [String]
    attr_accessor :receipt_type

    # It should be DDMMYYYYHHMM formatted.
    # @return [String]
    attr_accessor :receipt_date_time

    # Invoice details.
    # @return [Invoice]
    attr_accessor :invoice_info

    # Payment details.
    # @return [List of Payment]
    attr_accessor :payments

    # Discount details.
    # @return [List of Discount]
    attr_accessor :discounts

    # Extra data.
    # @return [String]
    attr_accessor :extra_data

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['total_receipt_amount'] = 'total_receipt_amount'
      @_hash['total_vat_amount'] = 'total_vat_amount'
      @_hash['currency'] = 'currency'
      @_hash['partner_id'] = 'partner_id'
      @_hash['branch_id'] = 'branch_id'
      @_hash['terminal_id'] = 'terminal_id'
      @_hash['receipt_number'] = 'receipt_number'
      @_hash['extra_number_1'] = 'extra_number_1'
      @_hash['extra_number_2'] = 'extra_number_2'
      @_hash['recognition_id'] = 'recognition_id'
      @_hash['receipt_type'] = 'receipt_type'
      @_hash['receipt_date_time'] = 'receipt_date_time'
      @_hash['invoice_info'] = 'invoice_info'
      @_hash['payments'] = 'payments'
      @_hash['discounts'] = 'discounts'
      @_hash['extra_data'] = 'extra_data'
      @_hash
    end

    def initialize(total_receipt_amount = nil,
                   total_vat_amount = nil,
                   currency = nil,
                   partner_id = nil,
                   branch_id = nil,
                   terminal_id = nil,
                   receipt_number = nil,
                   extra_number_1 = nil,
                   extra_number_2 = nil,
                   recognition_id = nil,
                   receipt_type = nil,
                   receipt_date_time = nil,
                   invoice_info = nil,
                   payments = nil,
                   discounts = nil,
                   extra_data = nil)
      @total_receipt_amount = total_receipt_amount
      @total_vat_amount = total_vat_amount
      @currency = currency
      @partner_id = partner_id
      @branch_id = branch_id
      @terminal_id = terminal_id
      @receipt_number = receipt_number
      @extra_number_1 = extra_number_1
      @extra_number_2 = extra_number_2
      @recognition_id = recognition_id
      @receipt_type = receipt_type
      @receipt_date_time = receipt_date_time
      @invoice_info = invoice_info
      @payments = payments
      @discounts = discounts
      @extra_data = extra_data
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      total_receipt_amount = hash['total_receipt_amount']
      total_vat_amount = hash['total_vat_amount']
      currency = hash['currency']
      partner_id = hash['partner_id']
      branch_id = hash['branch_id']
      terminal_id = hash['terminal_id']
      receipt_number = hash['receipt_number']
      extra_number_1 = hash['extra_number_1']
      extra_number_2 = hash['extra_number_2']
      recognition_id = hash['recognition_id']
      receipt_type = hash['receipt_type']
      receipt_date_time = hash['receipt_date_time']
      invoice_info = Invoice.from_hash(hash['invoice_info']) if
        hash['invoice_info']
      # Parameter is an array, so we need to iterate through it
      payments = nil
      unless hash['payments'].nil?
        payments = []
        hash['payments'].each do |structure|
          payments << (Payment.from_hash(structure) if structure)
        end
      end
      # Parameter is an array, so we need to iterate through it
      discounts = nil
      unless hash['discounts'].nil?
        discounts = []
        hash['discounts'].each do |structure|
          discounts << (Discount.from_hash(structure) if structure)
        end
      end
      extra_data = hash['extra_data']

      # Create object from extracted values.
      TransactionResultRequest.new(total_receipt_amount,
                                   total_vat_amount,
                                   currency,
                                   partner_id,
                                   branch_id,
                                   terminal_id,
                                   receipt_number,
                                   extra_number_1,
                                   extra_number_2,
                                   recognition_id,
                                   receipt_type,
                                   receipt_date_time,
                                   invoice_info,
                                   payments,
                                   discounts,
                                   extra_data)
    end
  end
end
