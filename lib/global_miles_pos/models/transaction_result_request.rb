# This file was automatically generated for Global Miles by APIMATIC v2.0
# ( https://apimatic.io ).

module GlobalMilesPos
  # TransactionResultRequest Model.
  class TransactionResultRequest < BaseModel
    # Total Receipt Amount  ex:12.35 TL == 1235
    # @return [Integer]
    attr_accessor :total_receipt_amount

    # Total VAT Amount  ex: 0.85 TL == 85
    # @return [Integer]
    attr_accessor :total_vat_amount

    # Terminal code.
    # @return [String]
    attr_accessor :okc_sicil_no

    # ReceiptNo
    # @return [Integer]
    attr_accessor :receipt_no

    # Z no
    # @return [Integer]
    attr_accessor :zno

    # Session based Identification Number .
    # @return [Integer]
    attr_accessor :recognition_id

    # Eku no (Electronic Journal)
    # @return [Integer]
    attr_accessor :eku_no

    # Receipt Type (Invoice , Food ..)
    # @return [String]
    attr_accessor :receipt_type

    # It should be  GGAAYYYYSSDD formatted.
    # @return [String]
    attr_accessor :receipt_date_time

    # Invoice detail info
    # @return [Invoice]
    attr_accessor :invoice_info

    # Payment Detail Block
    # @return [List of Payment]
    attr_accessor :payments

    # Payment Detail Block
    # @return [List of Discount]
    attr_accessor :discounts

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['total_receipt_amount'] = 'totalReceiptAmount'
      @_hash['total_vat_amount'] = 'totalVATAmount'
      @_hash['okc_sicil_no'] = 'OKCSicilNo'
      @_hash['receipt_no'] = 'ReceiptNo'
      @_hash['zno'] = 'Zno'
      @_hash['recognition_id'] = 'recognitionId'
      @_hash['eku_no'] = 'EkuNo'
      @_hash['receipt_type'] = 'ReceiptType'
      @_hash['receipt_date_time'] = 'ReceiptDateTime'
      @_hash['invoice_info'] = 'InvoiceInfo'
      @_hash['payments'] = 'Payments'
      @_hash['discounts'] = 'Discounts'
      @_hash
    end

    def initialize(total_receipt_amount = nil,
                   total_vat_amount = nil,
                   okc_sicil_no = nil,
                   receipt_no = nil,
                   zno = nil,
                   recognition_id = nil,
                   eku_no = nil,
                   receipt_type = nil,
                   receipt_date_time = nil,
                   invoice_info = nil,
                   payments = nil,
                   discounts = nil)
      @total_receipt_amount = total_receipt_amount
      @total_vat_amount = total_vat_amount
      @okc_sicil_no = okc_sicil_no
      @receipt_no = receipt_no
      @zno = zno
      @recognition_id = recognition_id
      @eku_no = eku_no
      @receipt_type = receipt_type
      @receipt_date_time = receipt_date_time
      @invoice_info = invoice_info
      @payments = payments
      @discounts = discounts
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      total_receipt_amount = hash['totalReceiptAmount']
      total_vat_amount = hash['totalVATAmount']
      okc_sicil_no = hash['OKCSicilNo']
      receipt_no = hash['ReceiptNo']
      zno = hash['Zno']
      recognition_id = hash['recognitionId']
      eku_no = hash['EkuNo']
      receipt_type = hash['ReceiptType']
      receipt_date_time = hash['ReceiptDateTime']
      invoice_info = Invoice.from_hash(hash['InvoiceInfo']) if
        hash['InvoiceInfo']
      # Parameter is an array, so we need to iterate through it
      payments = nil
      unless hash['Payments'].nil?
        payments = []
        hash['Payments'].each do |structure|
          payments << (Payment.from_hash(structure) if structure)
        end
      end
      # Parameter is an array, so we need to iterate through it
      discounts = nil
      unless hash['Discounts'].nil?
        discounts = []
        hash['Discounts'].each do |structure|
          discounts << (Discount.from_hash(structure) if structure)
        end
      end

      # Create object from extracted values.
      TransactionResultRequest.new(total_receipt_amount,
                                   total_vat_amount,
                                   okc_sicil_no,
                                   receipt_no,
                                   zno,
                                   recognition_id,
                                   eku_no,
                                   receipt_type,
                                   receipt_date_time,
                                   invoice_info,
                                   payments,
                                   discounts)
    end
  end
end
