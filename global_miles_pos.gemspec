Gem::Specification.new do |s|
  s.name = 'global_miles_pos'
  s.version = '1.0.0'
  s.summary = 'global_miles_pos'
  s.description = 'By integrating GlobalMiles POS APIs, Merchants can offer to the GlobalMiles users  earn mile and shop with their miles in their in-stores.  Work Flow: Common to dos both for Earn/Pay with miles.   We will provide Client ID/ Secret Key. Ask us Please. Before using any APIS of us, you need to authorise by using your Client ID / Secret Key  to get access_token.   During shopping cashier ask GlobalMiles user  for  GSM No or QR code and enter into POS.  POS software Post this info to GlobalMiles Server by using the API  GetCustomerInfo and get uniq identifier in order to  use at TransactionResult API  if you follow EarnMiles work Flow or  use at  StartBonusPayment API if you follow Use your Miles work flow.   Earn Mile:  After Getting Customer Info, Cashier will finalise the payment, as the payment done at POS post TransactionResult .  Use Your Mile(Bonus):  After Getting Customer Info, As all the items added to basket, Cashier ask for the payment method as the Globalmiles selected as payment method, Pos software Post this info GlobalMiles Server by using the API  StartBonusPayment .  An OTP code is send to the Customer mobile phone. The Customer/cashier enter this OTP into POS and this info Post to Globalmiles server by the BonusComplete API.  Cancel Payment with Miles: By using Get Bonus Provision & CancelBonusPayment APIs  it allows to  list related sale on the POS and Cancel it .'
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
