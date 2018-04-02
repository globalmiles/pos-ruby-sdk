# This file was automatically generated for Global Miles by APIMATIC v2.0
# ( https://apimatic.io ).

module GlobalMilesPos
  # GetBonusProvisionsResponse Model.
  class GetBonusProvisionsResponse < BaseModel
    # 0  Success, 1 and bigger than 1 unsuccessful
    # @return [Integer]
    attr_accessor :return_code

    # if success return is empty. if unsuccessful it returns error message
    # @return [String]
    attr_accessor :return_desc

    # if success return is empty. if unsuccessful it returns error message
    # @return [List of BonusProvision]
    attr_accessor :bonus_provisions

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['return_code'] = 'returnCode'
      @_hash['return_desc'] = 'returnDesc'
      @_hash['bonus_provisions'] = 'bonusProvisions'
      @_hash
    end

    def initialize(return_code = nil,
                   return_desc = nil,
                   bonus_provisions = nil)
      @return_code = return_code
      @return_desc = return_desc
      @bonus_provisions = bonus_provisions
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      return_code = hash['returnCode']
      return_desc = hash['returnDesc']
      # Parameter is an array, so we need to iterate through it
      bonus_provisions = nil
      unless hash['bonusProvisions'].nil?
        bonus_provisions = []
        hash['bonusProvisions'].each do |structure|
          bonus_provisions << (BonusProvision.from_hash(structure) if structure)
        end
      end

      # Create object from extracted values.
      GetBonusProvisionsResponse.new(return_code,
                                     return_desc,
                                     bonus_provisions)
    end
  end
end
