# This file was automatically generated for Global Miles by APIMATIC v2.0
# ( https://apimatic.io ).

module GlobalMilesPos
  # Invoice Model.
  class Invoice < BaseModel
    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :invoice_type

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :invoice_no

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :invoice_date

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['invoice_type'] = 'invoiceType'
      @_hash['invoice_no'] = 'invoiceNo'
      @_hash['invoice_date'] = 'invoiceDate'
      @_hash
    end

    def initialize(invoice_type = nil,
                   invoice_no = nil,
                   invoice_date = nil)
      @invoice_type = invoice_type
      @invoice_no = invoice_no
      @invoice_date = invoice_date
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      invoice_type = hash['invoiceType']
      invoice_no = hash['invoiceNo']
      invoice_date = hash['invoiceDate']

      # Create object from extracted values.
      Invoice.new(invoice_type,
                  invoice_no,
                  invoice_date)
    end
  end
end
