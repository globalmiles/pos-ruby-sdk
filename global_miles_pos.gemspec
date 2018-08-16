Gem::Specification.new do |s|
  s.name = 'global_miles_pos'
  s.version = '2.0.0'
  s.summary = 'global_miles_pos'
  s.description = 'By integrating Global Miles POS APIs, Merchants can offer to the Global Miles users  earn mile and shop with their miles in their in-stores.  Work Flow: Common to dos both for Earn/Pay with miles.   We will provide Client ID/ Secret Key. Before using any endpoints of us, you need to authorize by using your Client ID / Client Secret to get access_token.  During shopping cashier ask GlobalMiles user for GSM / FFP ID / Code or EMail and enter into POS.  POS software Post this info to Global Miles Server by using the endpoint GetCustomerInfo and get unique identifier in order to use at TransactionResult endpoint if you follow EarnMiles work Flow or use at  StartMilePayment endpoint if you follow use your Miles work flow.   Earn Mile:  After Getting Customer Info, Cashier will finalize the payment, as the payment done at POS post TransactionResult.  Pay with Miles: After Getting Customer Info, as all the items added to basket, Cashier ask for the payment method as the Global Miles selected as payment method, Pos software Post this info Global Miles Server by using the endpoint StartMilePayment.  An OTP code is send to the Customer mobile phone. The Customer/cashier enter this OTP into POS and this info Post to Global Miles server by the CompleteMilePayment endpoint.  Cancel Payment with Miles: By using Get Mile Provision & CancelMilePayment endpoints  it allows to  list related sale on the POS and Cancel it .'
  s.authors = ['APIMatic SDK Generator']
  s.email = 'support@apimatic.io'
  s.homepage = 'https://apimatic.io'
  s.license = 'MIT'
  s.add_dependency('logging', '~> 2.0')
  s.add_dependency('faraday', '~> 0.10.0')
  s.add_dependency('test-unit', '~> 3.1.5')
  s.add_dependency('certifi', '~> 2016.9', '>= 2016.09.26')
  s.add_dependency('faraday-http-cache', '~> 1.2', '>= 1.2.2')
  s.required_ruby_version = '~> 2.0'
  s.files = Dir['{bin,lib,man,test,spec}/**/*', 'README*', 'LICENSE*']
  s.require_paths = ['lib']
end
