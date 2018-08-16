# This file was automatically generated for Global Miles by APIMATIC v2.0
# ( https://apimatic.io ).

module GlobalMilesPos
  # Invoice Model.
  class Invoice < BaseModel
    # Type of the invoice.
    # @return [String]
    attr_accessor :invoice_type

    # Number of the invoice.
    # @return [String]
    attr_accessor :invoice_number

    # Date of the invoice.
    # @return [String]
    attr_accessor :invoice_date

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['invoice_type'] = 'invoice_type'
      @_hash['invoice_number'] = 'invoice_number'
      @_hash['invoice_date'] = 'invoice_date'
      @_hash
    end

    def initialize(invoice_type = nil,
                   invoice_number = nil,
                   invoice_date = nil)
      @invoice_type = invoice_type
      @invoice_number = invoice_number
      @invoice_date = invoice_date
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      invoice_type = hash['invoice_type']
      invoice_number = hash['invoice_number']
      invoice_date = hash['invoice_date']

      # Create object from extracted values.
      Invoice.new(invoice_type,
                  invoice_number,
                  invoice_date)
    end
  end
end
