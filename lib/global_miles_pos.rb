# This file was automatically generated for Global Miles by APIMATIC v2.0
# ( https://apimatic.io ).
require 'date'
require 'json'
require 'faraday'
require 'certifi'
require 'logging'

require_relative 'global_miles_pos/api_helper.rb'
require_relative 'global_miles_pos/global_miles_pos.rb'

# Http
require_relative 'global_miles_pos/http/http_call_back.rb'
require_relative 'global_miles_pos/http/http_client.rb'
require_relative 'global_miles_pos/http/http_method_enum.rb'
require_relative 'global_miles_pos/http/http_request.rb'
require_relative 'global_miles_pos/http/http_response.rb'
require_relative 'global_miles_pos/http/http_context.rb'
require_relative 'global_miles_pos/http/faraday_client.rb'
require_relative 'global_miles_pos/http/auth/o_auth_2.rb'

# Models
require_relative 'global_miles_pos/models/base_model.rb'
require_relative 'global_miles_pos/models/complete_mile_payment_response.rb'
require_relative 'global_miles_pos/models/cancel_mile_payment_response.rb'
require_relative 'global_miles_pos/models/get_mile_provisions_request.rb'
require_relative 'global_miles_pos/models/get_bonus_provisions_response.rb'
require_relative 'global_miles_pos/models/mile_provision.rb'
require_relative 'global_miles_pos/models/o_auth_request.rb'
require_relative 'global_miles_pos/models/o_auth_response.rb'
require_relative 'global_miles_pos/models/transaction_result_request.rb'
require_relative 'global_miles_pos/models/start_mile_payment_request.rb'
require_relative 'global_miles_pos/models/cancel_mile_payment_request.rb'
require_relative 'global_miles_pos/models/get_customer_info_response.rb'
require_relative 'global_miles_pos/models/get_customer_info_request.rb'
require_relative 'global_miles_pos/models/discount.rb'
require_relative 'global_miles_pos/models/payment.rb'
require_relative 'global_miles_pos/models/invoice.rb'
require_relative 'global_miles_pos/models/transaction_result_response.rb'
require_relative 'global_miles_pos/models/start_mile_payment_response.rb'
require_relative 'global_miles_pos/models/complete_mile_payment_request.rb'
require_relative 'global_miles_pos/models/o_auth_token.rb'
require_relative 'global_miles_pos/models/o_auth_provider_error_enum.rb'

# Exceptions
require_relative 'global_miles_pos/exceptions/api_exception.rb'
require_relative 'global_miles_pos/exceptions/o_auth_provider_exception.rb'

require_relative 'global_miles_pos/configuration.rb'

# Controllers
require_relative 'global_miles_pos/controllers/base_controller.rb'
require_relative 'global_miles_pos/controllers/earn_miles_controller.rb'
require_relative 'global_miles_pos/controllers/authentication_controller.rb'
require_relative 'global_miles_pos/controllers/common_controller.rb'
require_relative 'global_miles_pos/controllers/pay_with_miles_controller.rb'
require_relative 'global_miles_pos/controllers/o_auth_authorization' \
                 '_controller.rb'
