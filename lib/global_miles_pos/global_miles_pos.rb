# This file was automatically generated for Global Miles by APIMATIC v2.0
# ( https://apimatic.io ).

module GlobalMilesPos
  #  global_miles_pos client class.
  class GlobalMilesPos
    # Singleton access to payment_systems controller.
    # @return [PaymentSystemsController] Returns the controller instance.
    def payment_systems
      PaymentSystemsController.instance
    end

    # Singleton access to authentication controller.
    # @return [AuthenticationController] Returns the controller instance.
    def authentication
      AuthenticationController.instance
    end

    # Singleton access to common controller.
    # @return [CommonController] Returns the controller instance.
    def common
      CommonController.instance
    end

    # Singleton access to bonus_payments controller.
    # @return [BonusPaymentsController] Returns the controller instance.
    def bonus_payments
      BonusPaymentsController.instance
    end

    # Singleton access to o_auth_authorization controller.
    # @return [OAuthAuthorizationController] Returns the controller instance.
    def o_auth_authorization
      OAuthAuthorizationController.instance
    end

    # Returns the configuration class for easy access.
    # @return [Configuration] Returns the actual configuration class.
    def config
      Configuration
    end

    # Returns the authentication class for easy access.
    # @return [OAuth2] Returns the actual OAuth2 class.
    def auth
      OAuth2
    end

    # Initializer with authentication and configuration parameters.
    def initialize(o_auth_client_id: nil, o_auth_client_secret: nil)
      Configuration.o_auth_client_id = o_auth_client_id if
        o_auth_client_id
      Configuration.o_auth_client_secret = o_auth_client_secret if
        o_auth_client_secret
    end
  end
end
