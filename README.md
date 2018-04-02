# Getting started

By integrating GlobalMiles POS APIs, Merchants can offer to the GlobalMiles users  earn mile and shop with their miles in their in-stores.

Work Flow:
Common to dos both for Earn/Pay with miles. 

We will provide Client ID/ Secret Key. Ask us Please.
Before using any APIS of us, you need to authorise by using your Client ID / Secret Key  to get access_token.  
During shopping cashier ask GlobalMiles user  for  GSM No or QR code and enter into POS. 
POS software Post this info to GlobalMiles Server by using the API  GetCustomerInfo and get uniq identifier in order to  use at TransactionResult API  if you follow EarnMiles work Flow or  use at  StartBonusPayment API if you follow Use your Miles work flow. 

Earn Mile: 
After Getting Customer Info, Cashier will finalise the payment, as the payment done at POS post TransactionResult .

Use Your Mile(Bonus):

After Getting Customer Info, As all the items added to basket, Cashier ask for the payment method as the Globalmiles selected as payment method, Pos software Post this info GlobalMiles Server by using the API  StartBonusPayment .

An OTP code is send to the Customer mobile phone. The Customer/cashier enter this OTP into POS and this info Post to Globalmiles server by the BonusComplete API.

Cancel Payment with Miles:
By using Get Bonus Provision & CancelBonusPayment APIs  it allows to  list related sale on the POS and Cancel it .

## How to Build

This client library is a Ruby gem which can be compiled and used in your Ruby and Ruby on Rails project. This library requires a few gems from the RubyGems repository.

1. Open the command line interface or the terminal and navigate to the folder containing the source code.
2. Run ``` gem build global_miles_pos.gemspec ``` to build the gem.
3. Once built, the gem can be installed on the current work environment using ``` gem install global_miles_pos-1.0.0.gem ```

![Building Gem](https://apidocs.io/illustration/ruby?step=buildSDK&workspaceFolder=GlobalMilesPos-Ruby&workspaceName=GlobalMilesPos-Ruby&projectName=global_miles_pos&gemName=global_miles_pos&gemVer=1.0.0)

## How to Use

The following section explains how to use the GlobalMilesPos Ruby Gem in a new Rails project using RubyMine&trade;. The basic workflow presented here is also applicable if you prefer using a different editor or IDE.

### 1. Starting a new project

Close any existing projects in RubyMine&trade; by selecting ``` File -> Close Project ```. Next, click on ``` Create New Project ``` to create a new project from scratch.

![Create a new project in RubyMine](https://apidocs.io/illustration/ruby?step=createNewProject0&workspaceFolder=GlobalMilesPos-Ruby&workspaceName=GlobalMilesPos&projectName=global_miles_pos&gemName=global_miles_pos&gemVer=1.0.0)

Next, provide ``` TestApp ``` as the project name, choose ``` Rails Application ``` as the project type, and click ``` OK ```.

![Create a new Rails Application in RubyMine - step 1](https://apidocs.io/illustration/ruby?step=createNewProject1&workspaceFolder=GlobalMilesPos-Ruby&workspaceName=GlobalMilesPos&projectName=global_miles_pos&gemName=global_miles_pos&gemVer=1.0.0)

In the next dialog make sure that correct *Ruby SDK* is being used (minimum 2.0.0) and click ``` OK ```.

![Create a new Rails Application in RubyMine - step 2](https://apidocs.io/illustration/ruby?step=createNewProject2&workspaceFolder=GlobalMilesPos-Ruby&workspaceName=GlobalMilesPos&projectName=global_miles_pos&gemName=global_miles_pos&gemVer=1.0.0)

This will create a new Rails Application project with an existing set of files and folder.

### 2. Add reference of the gem

In order to use the GlobalMilesPos gem in the new project we must add a gem reference. Locate the ```Gemfile``` in the *Project Explorer* window under the ``` TestApp ``` project node. The file contains references to all gems being used in the project. Here, add the reference to the library gem by adding the following line: ``` gem 'global_miles_pos', '~> 1.0.0' ```

![Add references of the Gemfile](https://apidocs.io/illustration/ruby?step=addReference&workspaceFolder=GlobalMilesPos-Ruby&workspaceName=GlobalMilesPos&projectName=global_miles_pos&gemName=global_miles_pos&gemVer=1.0.0)

### 3. Adding a new Rails Controller

Once the ``` TestApp ``` project is created, a folder named ``` controllers ``` will be visible in the *Project Explorer* under the following path: ``` TestApp > app > controllers ```. Right click on this folder and select ``` New -> Run Rails Generator... ```.

![Run Rails Generator on Controllers Folder](https://apidocs.io/illustration/ruby?step=addCode0&workspaceFolder=GlobalMilesPos-Ruby&workspaceName=GlobalMilesPos&projectName=global_miles_pos&gemName=global_miles_pos&gemVer=1.0.0)

Selecting the said option will popup a small window where the generator names are displayed. Here, select the ``` controller ``` template.

![Create a new Controller](https://apidocs.io/illustration/ruby?step=addCode1&workspaceFolder=GlobalMilesPos-Ruby&workspaceName=GlobalMilesPos&projectName=global_miles_pos&gemName=global_miles_pos&gemVer=1.0.0)

Next, a popup window will ask you for a Controller name and included Actions. For controller name provide ``` Hello ``` and include an action named ``` Index ``` and click ``` OK ```.

![Add a new Controller](https://apidocs.io/illustration/ruby?step=addCode2&workspaceFolder=GlobalMilesPos-Ruby&workspaceName=GlobalMilesPos&projectName=global_miles_pos&gemName=global_miles_pos&gemVer=1.0.0)

A new controller class anmed ``` HelloController ``` will be created in a file named ``` hello_controller.rb ``` containing a method named ``` Index ```. In this method, add code for initialization and a sample for its usage.

![Initialize the library](https://apidocs.io/illustration/ruby?step=addCode3&workspaceFolder=GlobalMilesPos-Ruby&workspaceName=GlobalMilesPos&projectName=global_miles_pos&gemName=global_miles_pos&gemVer=1.0.0)

## How to Test

You can test the generated SDK and the server with automatically generated test
cases as follows:

  1. From terminal/cmd navigate to the root directory of the SDK.
  2. Invoke: `bundle exec rake`

## Initialization

### Authentication
In order to setup authentication and initialization of the API client, you need the following information.

| Parameter | Description |
|-----------|-------------|
| o_auth_client_id | OAuth 2 Client ID |
| o_auth_client_secret | OAuth 2 Client Secret |



API client can be initialized as following.

```ruby
# Configuration parameters and credentials
o_auth_client_id = 'o_auth_client_id' # OAuth 2 Client ID
o_auth_client_secret = 'o_auth_client_secret' # OAuth 2 Client Secret

client = GlobalMilesPos::GlobalMilesPos.new(
  o_auth_client_id: o_auth_client_id,
  o_auth_client_secret: o_auth_client_secret
)
```

The added initlization code can be debugged by putting a breakpoint in the ``` Index ``` method and running the project in debug mode by selecting ``` Run -> Debug 'Development: TestApp' ```.

![Debug the TestApp](https://apidocs.io/illustration/ruby?step=addCode4&workspaceFolder=Global%20Miles%20POS%20API-Ruby&workspaceName=GlobalMilesPos&projectName=global_miles_pos&gemName=global_miles_pos&gemVer=1.0.0&initLine=client%2520%253D%2520GlobalMilesPos.new%2528%2527o_auth_client_id%2527%252C%2520%2527o_auth_client_secret%2527%2529)


You must now authorize the client.

### Authorizing your client

This SDK uses *OAuth 2.0 authorization* to authorize the client.

The `authorize()` method will exchange the OAuth client credentials for an *access token*.
The access token is an object containing information for authorizing client requests.


```ruby
begin
  client.auth.authorize()
rescue GlobalMilesPos::OAuthProviderException => ex
  # handle exception
end
```

The client can now make authorized endpoint calls.


### Storing an access token for reuse

It is recommended that you store the access token for reuse.

You can store the access token in a file or a database.

```ruby
# store token
save_token_to_database(client.config.o_auth_token)
```

### Creating a client from a stored token

To authorize a client from a stored access token, just set the access token after creating the client:

```ruby
client = GlobalMilesPos::GlobalMilesPos.new
client.config.o_auth_token = load_token_from_database
```

### Complete example

```ruby
require 'global_miles_pos'

include GlobalMilesPos

# function for storing token to database
def save_token_to_database(token)
  # code to save the token to database
end

# function for loading token from database
def load_token_from_database
  # load token from database and return it (return None if no token exists)
end

# Configuration parameters and credentials
o_auth_client_id = 'o_auth_client_id' # OAuth 2 Client ID
o_auth_client_secret = 'o_auth_client_secret' # OAuth 2 Client Secret

#  create a new client
client = GlobalMilesPos.new(
  o_auth_client_id: o_auth_client_id,
  o_auth_client_secret: o_auth_client_secret
)

# obtain access token, needed for client to be authorized
previous_token = load_token_from_database
if previous_token
  # restore previous access token
  client.config.o_auth_token = previous_token
else
  # obtain new access token
  begin
    token = client.auth.authorize()
    save_token_to_database(token)
  rescue OAuthProviderException => ex
    # handle exception
  end
end

# the client is now authorized and you can use controllers to make endpoint calls
```


# Class Reference

## <a name="list_of_controllers"></a>List of Controllers

* [PaymentSystemsController](#payment_systems_controller)
* [AuthenticationController](#authentication_controller)
* [CommonController](#common_controller)
* [BonusPaymentsController](#bonus_payments_controller)

## <a name="payment_systems_controller"></a>![Class: ](https://apidocs.io/img/class.png ".PaymentSystemsController") PaymentSystemsController

### Get singleton instance

The singleton instance of the ``` PaymentSystemsController ``` class can be accessed from the API Client.

```ruby
paymentSystems_controller = client.payment_systems
```

### <a name="create_transaction_result"></a>![Method: ](https://apidocs.io/img/method.png ".PaymentSystemsController.create_transaction_result") create_transaction_result

> After getting customer info by Get customer Info API and finished the shopping procedure in POS terminal, use this API to complete transaction.


```ruby
def create_transaction_result(accept,
                                  content_type,
                                  authorization,
                                  body); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| accept |  ``` Required ```  ``` DefaultValue ```  | It advertises which content type is able to understand. |
| content_type |  ``` Required ```  ``` DefaultValue ```  | It tells the client what the content type of the returned. |
| authorization |  ``` Required ```  | It includes OAuth2 token. |
| body |  ``` Required ```  | The body of the request. |


#### Example Usage

```ruby
accept = 'application/json'
content_type = 'application/json'
authorization = 'Authorization'
body = TransactionResultRequest.new

result = paymentSystems_controller.create_transaction_result(accept, content_type, authorization, body)

```


[Back to List of Controllers](#list_of_controllers)

## <a name="authentication_controller"></a>![Class: ](https://apidocs.io/img/class.png ".AuthenticationController") AuthenticationController

### Get singleton instance

The singleton instance of the ``` AuthenticationController ``` class can be accessed from the API Client.

```ruby
authentication_controller = client.authentication
```

### <a name="create_authentication"></a>![Method: ](https://apidocs.io/img/method.png ".AuthenticationController.create_authentication") create_authentication

> *Tags:*  ``` Skips Authentication ``` 

> An access token will allow you to make requests for the system. We support only one type of token: client_credentials


```ruby
def create_authentication(accept,
                              content_type,
                              body); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| accept |  ``` Required ```  ``` DefaultValue ```  | It advertises which content type is able to understand. |
| content_type |  ``` Required ```  ``` DefaultValue ```  | It tells the client what the content type of the returned. |
| body |  ``` Required ```  | The body of the request. |


#### Example Usage

```ruby
accept = 'application/json'
content_type = 'application/json'
body = OAuthRequest.new

result = authentication_controller.create_authentication(accept, content_type, body)

```


[Back to List of Controllers](#list_of_controllers)

## <a name="common_controller"></a>![Class: ](https://apidocs.io/img/class.png ".CommonController") CommonController

### Get singleton instance

The singleton instance of the ``` CommonController ``` class can be accessed from the API Client.

```ruby
common_controller = client.common
```

### <a name="create_get_customer_info"></a>![Method: ](https://apidocs.io/img/method.png ".CommonController.create_get_customer_info") create_get_customer_info

> This API will help you to retrieve customer's mil quantity and unique identifier value.Unique identifier value must be used by Transaction Result API in order to complete shopping.


```ruby
def create_get_customer_info(accept,
                                 content_type,
                                 authorization,
                                 body); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| accept |  ``` Required ```  ``` DefaultValue ```  | It advertises which content type is able to understand. |
| content_type |  ``` Required ```  ``` DefaultValue ```  | It tells the client what the content type of the returned. |
| authorization |  ``` Required ```  | It includes OAuth2 token. |
| body |  ``` Required ```  | The body of the request. |


#### Example Usage

```ruby
accept = 'application/json'
content_type = 'application/json'
authorization = 'Authorization'
body = GetCustomerInfoRequest.new

result = common_controller.create_get_customer_info(accept, content_type, authorization, body)

```


[Back to List of Controllers](#list_of_controllers)

## <a name="bonus_payments_controller"></a>![Class: ](https://apidocs.io/img/class.png ".BonusPaymentsController") BonusPaymentsController

### Get singleton instance

The singleton instance of the ``` BonusPaymentsController ``` class can be accessed from the API Client.

```ruby
bonusPayments_controller = client.bonus_payments
```

### <a name="create_start_bonus_payment"></a>![Method: ](https://apidocs.io/img/method.png ".BonusPaymentsController.create_start_bonus_payment") create_start_bonus_payment

> After getting customer info's and RecognitionID to start Payment with Miles Use this API.
> After calling this API successfully OTP code send to cutomer GSM number. This OTP must be used with Complete API in order to complete sale.


```ruby
def create_start_bonus_payment(accept,
                                   content_type,
                                   authorization,
                                   body); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| accept |  ``` Required ```  ``` DefaultValue ```  | It advertises which content type is able to understand. |
| content_type |  ``` Required ```  ``` DefaultValue ```  | It tells the client what the content type of the returned. |
| authorization |  ``` Required ```  | It includes OAuth2 token. |
| body |  ``` Required ```  | The body of the request. |


#### Example Usage

```ruby
accept = 'application/json'
content_type = 'application/json'
authorization = 'Authorization'
body = StartBonusPaymentRequest.new

result = bonusPayments_controller.create_start_bonus_payment(accept, content_type, authorization, body)

```


### <a name="create_complete_bonus_payment"></a>![Method: ](https://apidocs.io/img/method.png ".BonusPaymentsController.create_complete_bonus_payment") create_complete_bonus_payment

> In order to finalise payment with Miles use this API.Use the OTP number  which is send to user GSM on the Request body.


```ruby
def create_complete_bonus_payment(accept,
                                      content_type,
                                      authorization,
                                      body); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| accept |  ``` Required ```  ``` DefaultValue ```  | It advertises which content type is able to understand. |
| content_type |  ``` Required ```  ``` DefaultValue ```  | It tells the client what the content type of the returned. |
| authorization |  ``` Required ```  | It includes OAuth2 token. |
| body |  ``` Required ```  | The body of the request. |


#### Example Usage

```ruby
accept = 'application/json'
content_type = 'application/json'
authorization = 'Authorization'
body = CompleteBonusPaymentRequest.new

result = bonusPayments_controller.create_complete_bonus_payment(accept, content_type, authorization, body)

```


### <a name="create_cancel_bonus_payment"></a>![Method: ](https://apidocs.io/img/method.png ".BonusPaymentsController.create_cancel_bonus_payment") create_cancel_bonus_payment

> In order to cancel payment with miles you can use this API. It allows to cancel payment only related GSM and terminal ID numbers.


```ruby
def create_cancel_bonus_payment(accept,
                                    content_type,
                                    authorization,
                                    body); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| accept |  ``` Required ```  ``` DefaultValue ```  | It advertises which content type is able to understand. |
| content_type |  ``` Required ```  ``` DefaultValue ```  | It tells the client what the content type of the returned. |
| authorization |  ``` Required ```  | It includes OAuth2 token. |
| body |  ``` Required ```  | The body of the request. |


#### Example Usage

```ruby
accept = 'application/json'
content_type = 'application/json'
authorization = 'Authorization'
body = CancelBonusPaymentRequest.new

result = bonusPayments_controller.create_cancel_bonus_payment(accept, content_type, authorization, body)

```


### <a name="create_get_bonus_provisions"></a>![Method: ](https://apidocs.io/img/method.png ".BonusPaymentsController.create_get_bonus_provisions") create_get_bonus_provisions

> Before cancelling the payment with Miles this API is used to list the related sale.


```ruby
def create_get_bonus_provisions(accept,
                                    content_type,
                                    authorization,
                                    body); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| accept |  ``` Required ```  ``` DefaultValue ```  | It advertises which content type is able to understand. |
| content_type |  ``` Required ```  ``` DefaultValue ```  | It tells the client what the content type of the returned. |
| authorization |  ``` Required ```  | It includes OAuth2 token. |
| body |  ``` Required ```  | The body of the request. |


#### Example Usage

```ruby
accept = 'application/json'
content_type = 'application/json'
authorization = 'Authorization'
body = GetBonusProvisionsRequest.new

result = bonusPayments_controller.create_get_bonus_provisions(accept, content_type, authorization, body)

```


[Back to List of Controllers](#list_of_controllers)



# pos-ruby-sdk
