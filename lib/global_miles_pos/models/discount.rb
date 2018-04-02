# This file was automatically generated for Global Miles by APIMATIC v2.0
# ( https://apimatic.io ).

module GlobalMilesPos
  # Discount Model.
  class Discount < BaseModel
    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :orijin

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :type

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :value

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['orijin'] = 'orijin'
      @_hash['type'] = 'type'
      @_hash['value'] = 'value'
      @_hash
    end

    def initialize(orijin = nil,
                   type = nil,
                   value = nil)
      @orijin = orijin
      @type = type
      @value = value
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      orijin = hash['orijin']
      type = hash['type']
      value = hash['value']

      # Create object from extracted values.
      Discount.new(orijin,
                   type,
                   value)
    end
  end
end
