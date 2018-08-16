# This file was automatically generated for Global Miles by APIMATIC v2.0
# ( https://apimatic.io ).

module GlobalMilesPos
  # TransactionResultResponse Model.
  class TransactionResultResponse < BaseModel
    # 0  Success, 1 and bigger than 1 unsuccessful.
    # @return [Integer]
    attr_accessor :return_code

    # if success return is empty. if unsuccessful it returns error message.
    # @return [String]
    attr_accessor :return_desc

    # Text data to be used for printing the receipt.
    # @return [String]
    attr_accessor :qr_data

    # Extra information for generel usage.
    # @return [String]
    attr_accessor :extra_info

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['return_code'] = 'return_code'
      @_hash['return_desc'] = 'return_desc'
      @_hash['qr_data'] = 'qr_data'
      @_hash['extra_info'] = 'extra_info'
      @_hash
    end

    def initialize(return_code = nil,
                   return_desc = nil,
                   qr_data = nil,
                   extra_info = nil)
      @return_code = return_code
      @return_desc = return_desc
      @qr_data = qr_data
      @extra_info = extra_info
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      return_code = hash['return_code']
      return_desc = hash['return_desc']
      qr_data = hash['qr_data']
      extra_info = hash['extra_info']

      # Create object from extracted values.
      TransactionResultResponse.new(return_code,
                                    return_desc,
                                    qr_data,
                                    extra_info)
    end
  end
end
