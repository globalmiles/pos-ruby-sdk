# This file was automatically generated for Global Miles by APIMATIC v2.0
# ( https://apimatic.io ).

module GlobalMilesPos
  # Discount Model.
  class Discount < BaseModel
    # Origin of the discount. 1: Global Miles, 2: Other.
    # @return [String]
    attr_accessor :origin

    # Type of the discount. 0: amount based, 1: rate based.
    # @return [String]
    attr_accessor :type

    # Value of the discount.
    # @return [Float]
    attr_accessor :value

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['origin'] = 'origin'
      @_hash['type'] = 'type'
      @_hash['value'] = 'value'
      @_hash
    end

    def initialize(origin = nil,
                   type = nil,
                   value = nil)
      @origin = origin
      @type = type
      @value = value
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      origin = hash['origin']
      type = hash['type']
      value = hash['value']

      # Create object from extracted values.
      Discount.new(origin,
                   type,
                   value)
    end
  end
end
