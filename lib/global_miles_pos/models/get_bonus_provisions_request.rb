# This file was automatically generated for Global Miles by APIMATIC v2.0
# ( https://apimatic.io ).

module GlobalMilesPos
  # GetBonusProvisionsRequest Model.
  class GetBonusProvisionsRequest < BaseModel
    # Müşteri tanıma tercihi, Telefon numarası, QR code gibi
    # @return [String]
    attr_accessor :read_code

    # 1: Telefon numarası, 2: Müşteri unique identifier, 3: Diğer
    # @return [String]
    attr_accessor :read_code_type

    # Terminal code.
    # @return [String]
    attr_accessor :okc_sicil_no

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['read_code'] = 'readCode'
      @_hash['read_code_type'] = 'readCodeType'
      @_hash['okc_sicil_no'] = 'OKCSicilNo'
      @_hash
    end

    def initialize(read_code = nil,
                   read_code_type = nil,
                   okc_sicil_no = nil)
      @read_code = read_code
      @read_code_type = read_code_type
      @okc_sicil_no = okc_sicil_no
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      read_code = hash['readCode']
      read_code_type = hash['readCodeType']
      okc_sicil_no = hash['OKCSicilNo']

      # Create object from extracted values.
      GetBonusProvisionsRequest.new(read_code,
                                    read_code_type,
                                    okc_sicil_no)
    end
  end
end
