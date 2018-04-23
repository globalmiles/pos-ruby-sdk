# This file was automatically generated for Global Miles by APIMATIC v2.0
# ( https://apimatic.io ).

module GlobalMilesPos
  # TransactionResultResponse Model.
  class TransactionResultResponse < BaseModel
    # 0  Success, 1 and bigger than 1 unsuccessful
    # @return [Integer]
    attr_accessor :return_code

    # if success return is empty. if unsuccessful it returns error message
    # @return [String]
    attr_accessor :return_desc

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['return_code'] = 'returnCode'
      @_hash['return_desc'] = 'returnDesc'
      @_hash
    end

    def initialize(return_code = nil,
                   return_desc = nil)
      @return_code = return_code
      @return_desc = return_desc
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      return_code = hash['returnCode']
      return_desc = hash['returnDesc']

      # Create object from extracted values.
      TransactionResultResponse.new(return_code,
                                    return_desc)
    end
  end
end
