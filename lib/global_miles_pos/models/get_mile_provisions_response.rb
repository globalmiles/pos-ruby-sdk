# This file was automatically generated for Global Miles by APIMATIC v2.0
# ( https://apimatic.io ).

module GlobalMilesPos
  # GetMileProvisionsResponse Model.
  class GetMileProvisionsResponse < BaseModel
    # 0  Success, 1 and bigger than 1 unsuccessful.
    # @return [Integer]
    attr_accessor :return_code

    # if success return is empty. if unsuccessful it returns error message.
    # @return [String]
    attr_accessor :return_desc

    # A collection of the payments.
    # @return [List of MileProvision]
    attr_accessor :payment_provisions

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['return_code'] = 'return_code'
      @_hash['return_desc'] = 'return_desc'
      @_hash['payment_provisions'] = 'payment_provisions'
      @_hash
    end

    def initialize(return_code = nil,
                   return_desc = nil,
                   payment_provisions = nil)
      @return_code = return_code
      @return_desc = return_desc
      @payment_provisions = payment_provisions
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      return_code = hash['return_code']
      return_desc = hash['return_desc']
      # Parameter is an array, so we need to iterate through it
      payment_provisions = nil
      unless hash['payment_provisions'].nil?
        payment_provisions = []
        hash['payment_provisions'].each do |structure|
          payment_provisions << (MileProvision.from_hash(structure) if structure)
        end
      end

      # Create object from extracted values.
      GetMileProvisionsResponse.new(return_code,
                                    return_desc,
                                    payment_provisions)
    end
  end
end