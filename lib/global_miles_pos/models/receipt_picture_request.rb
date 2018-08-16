# This file was automatically generated for Global Miles by APIMATIC v2.0
# ( https://apimatic.io ).

module GlobalMilesPos
  # ReceiptPictureRequest Model.
  class ReceiptPictureRequest < BaseModel
    # Terminal ID.
    # @return [String]
    attr_accessor :terminal_id

    # Session based user identification number.
    # @return [Integer]
    attr_accessor :recognition_id

    # File name of the picture.
    # @return [String]
    attr_accessor :file_name

    # Base64 encoded binary picture data.
    # @return [String]
    attr_accessor :picture

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['terminal_id'] = 'terminal_id'
      @_hash['recognition_id'] = 'recognition_id'
      @_hash['file_name'] = 'file_name'
      @_hash['picture'] = 'picture'
      @_hash
    end

    def initialize(terminal_id = nil,
                   recognition_id = nil,
                   file_name = nil,
                   picture = nil)
      @terminal_id = terminal_id
      @recognition_id = recognition_id
      @file_name = file_name
      @picture = picture
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      terminal_id = hash['terminal_id']
      recognition_id = hash['recognition_id']
      file_name = hash['file_name']
      picture = hash['picture']

      # Create object from extracted values.
      ReceiptPictureRequest.new(terminal_id,
                                recognition_id,
                                file_name,
                                picture)
    end
  end
end
