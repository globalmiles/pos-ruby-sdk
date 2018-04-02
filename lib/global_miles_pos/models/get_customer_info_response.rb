# This file was automatically generated for Global Miles by APIMATIC v2.0
# ( https://apimatic.io ).

module GlobalMilesPos
  # GetCustomerInfoResponse Model.
  class GetCustomerInfoResponse < BaseModel
    # 0 ise başarılı, 1 veya daha büyük ise başarısız
    # @return [Integer]
    attr_accessor :return_code

    # Başarılı ise boş, eğer hata varsa; hata mesajını içerir.
    # @return [String]
    attr_accessor :return_desc

    # Kullanıcının GlobalMiles sistemindeki unique identifier değeri
    # @return [Integer]
    attr_accessor :recognition_id

    # Müşterinin bu işlemde kullanabileceği puanın TL karşılığıdır. Son iki
    # karakter kuruşları temsil eder. Örneğin: 12.56 TL == 1256
    # @return [Integer]
    attr_accessor :available_point

    # Sadakat indirimi. Son iki karakter kuruşları temsil eder. Örneğin: 90.50
    # TL == 9050
    # @return [Integer]
    attr_accessor :loyalty_discounted_price

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['return_code'] = 'returnCode'
      @_hash['return_desc'] = 'returnDesc'
      @_hash['recognition_id'] = 'recognitionId'
      @_hash['available_point'] = 'availablePoint'
      @_hash['loyalty_discounted_price'] = 'loyaltyDiscountedPrice'
      @_hash
    end

    def initialize(return_code = nil,
                   return_desc = nil,
                   recognition_id = nil,
                   available_point = nil,
                   loyalty_discounted_price = nil)
      @return_code = return_code
      @return_desc = return_desc
      @recognition_id = recognition_id
      @available_point = available_point
      @loyalty_discounted_price = loyalty_discounted_price
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      return_code = hash['returnCode']
      return_desc = hash['returnDesc']
      recognition_id = hash['recognitionId']
      available_point = hash['availablePoint']
      loyalty_discounted_price = hash['loyaltyDiscountedPrice']

      # Create object from extracted values.
      GetCustomerInfoResponse.new(return_code,
                                  return_desc,
                                  recognition_id,
                                  available_point,
                                  loyalty_discounted_price)
    end
  end
end
