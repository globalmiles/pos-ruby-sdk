# Getting started

By integrating Global Miles POS APIs, Merchants can offer to the Global Miles users  earn mile and shop with their miles in their in-stores.

Work Flow:
Common to dos both for Earn/Pay with miles. 

We will provide Client ID/ Secret Key.
Before using any endpoints of us, you need to authorize by using your Client ID / Client Secret to get access_token. 
During shopping cashier ask GlobalMiles user for GSM / FFP ID / Code or EMail and enter into POS. 
POS software Post this info to Global Miles Server by using the endpoint GetCustomerInfo and get unique identifier in order to use at TransactionResult endpoint if you follow EarnMiles work Flow or use at  StartMilePayment endpoint if you follow use your Miles work flow. 

Earn Mile: 
After Getting Customer Info, Cashier will finalize the payment, as the payment done at POS post TransactionResult.

Pay with Miles:
After Getting Customer Info, as all the items added to basket, Cashier ask for the payment method as the Global Miles selected as payment method, Pos software Post this info Global Miles Server by using the endpoint StartMilePayment.

An OTP code is send to the Customer mobile phone. The Customer/cashier enter this OTP into POS and this info Post to Global Miles server by the CompleteMilePayment endpoint.

Cancel Payment with Miles:
By using Get Mile Provision & CancelMilePayment endpoints  it allows to  list related sale on the POS and Cancel it .

## How to Build

This client library is a Ruby gem which can be compiled and used in your Ruby and Ruby on Rails project. This library requires a few gems from the RubyGems repository.

1. Open the command line interface or the terminal and navigate to the folder containing the source code.
2. Run ``` gem build global_miles_pos.gemspec ``` to build the gem.
3. Once built, the gem can be installed on the current work environment using ``` gem install global_miles_pos-2.0.0.gem ```

![Building Gem](https://apidocs.io/illustration/ruby?step=buildSDK&workspaceFolder=GlobalMilesPos-Ruby&workspaceName=GlobalMilesPos-Ruby&projectName=global_miles_pos&gemName=global_miles_pos&gemVer=2.0.0)

## How to Use

The following section explains how to use the GlobalMilesPos Ruby Gem in a new Rails project using RubyMine&trade;. The basic workflow presented here is also applicable if you prefer using a different editor or IDE.

### 1. Starting a new project

Close any existing projects in RubyMine&trade; by selecting ``` File -> Close Project ```. Next, click on ``` Create New Project ``` to create a new project from scratch.

![Create a new project in RubyMine](https://apidocs.io/illustration/ruby?step=createNewProject0&workspaceFolder=GlobalMilesPos-Ruby&workspaceName=GlobalMilesPos&projectName=global_miles_pos&gemName=global_miles_pos&gemVer=2.0.0)

Next, provide ``` TestApp ``` as the project name, choose ``` Rails Application ``` as the project type, and click ``` OK ```.

![Create a new Rails Application in RubyMine - step 1](https://apidocs.io/illustration/ruby?step=createNewProject1&workspaceFolder=GlobalMilesPos-Ruby&workspaceName=GlobalMilesPos&projectName=global_miles_pos&gemName=global_miles_pos&gemVer=2.0.0)

In the next dialog make sure that correct *Ruby SDK* is being used (minimum 2.0.0) and click ``` OK ```.

![Create a new Rails Application in RubyMine - step 2](https://apidocs.io/illustration/ruby?step=createNewProject2&workspaceFolder=GlobalMilesPos-Ruby&workspaceName=GlobalMilesPos&projectName=global_miles_pos&gemName=global_miles_pos&gemVer=2.0.0)

This will create a new Rails Application project with an existing set of files and folder.

### 2. Add reference of the gem

In order to use the GlobalMilesPos gem in the new project we must add a gem reference. Locate the ```Gemfile``` in the *Project Explorer* window under the ``` TestApp ``` project node. The file contains references to all gems being used in the project. Here, add the reference to the library gem by adding the following line: ``` gem 'global_miles_pos', '~> 2.0.0' ```

![Add references of the Gemfile](https://apidocs.io/illustration/ruby?step=addReference&workspaceFolder=GlobalMilesPos-Ruby&workspaceName=GlobalMilesPos&projectName=global_miles_pos&gemName=global_miles_pos&gemVer=2.0.0)

### 3. Adding a new Rails Controller

Once the ``` TestApp ``` project is created, a folder named ``` controllers ``` will be visible in the *Project Explorer* under the following path: ``` TestApp > app > controllers ```. Right click on this folder and select ``` New -> Run Rails Generator... ```.

![Run Rails Generator on Controllers Folder](https://apidocs.io/illustration/ruby?step=addCode0&workspaceFolder=GlobalMilesPos-Ruby&workspaceName=GlobalMilesPos&projectName=global_miles_pos&gemName=global_miles_pos&gemVer=2.0.0)

Selecting the said option will popup a small window where the generator names are displayed. Here, select the ``` controller ``` template.

![Create a new Controller](https://apidocs.io/illustration/ruby?step=addCode1&workspaceFolder=GlobalMilesPos-Ruby&workspaceName=GlobalMilesPos&projectName=global_miles_pos&gemName=global_miles_pos&gemVer=2.0.0)

Next, a popup window will ask you for a Controller name and included Actions. For controller name provide ``` Hello ``` and include an action named ``` Index ``` and click ``` OK ```.

![Add a new Controller](https://apidocs.io/illustration/ruby?step=addCode2&workspaceFolder=GlobalMilesPos-Ruby&workspaceName=GlobalMilesPos&projectName=global_miles_pos&gemName=global_miles_pos&gemVer=2.0.0)

A new controller class anmed ``` HelloController ``` will be created in a file named ``` hello_controller.rb ``` containing a method named ``` Index ```. In this method, add code for initialization and a sample for its usage.

![Initialize the library](https://apidocs.io/illustration/ruby?step=addCode3&workspaceFolder=GlobalMilesPos-Ruby&workspaceName=GlobalMilesPos&projectName=global_miles_pos&gemName=global_miles_pos&gemVer=2.0.0)

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

![Debug the TestApp](https://apidocs.io/illustration/ruby?step=addCode4&workspaceFolder=Global%20Miles%20POS%20API-Ruby&workspaceName=GlobalMilesPos&projectName=global_miles_pos&gemName=global_miles_pos&gemVer=2.0.0&initLine=client%2520%253D%2520GlobalMilesPos.new%2528%2527o_auth_client_id%2527%252C%2520%2527o_auth_client_secret%2527%2529)


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

* [PayWithMilesController](#pay_with_miles_controller)
* [AuthenticationController](#authentication_controller)
* [EarnMilesController](#earn_miles_controller)
* [CommonController](#common_controller)

## <a name="pay_with_miles_controller"></a>![Class: ](https://apidocs.io/img/class.png ".PayWithMilesController") PayWithMilesController

### Get singleton instance

The singleton instance of the ``` PayWithMilesController ``` class can be accessed from the API Client.

```ruby
payWithMiles_controller = client.pay_with_miles
```

### <a name="delete_cancel_mile_payment"></a>![Method: ](https://apidocs.io/img/method.png ".PayWithMilesController.delete_cancel_mile_payment") delete_cancel_mile_payment

> In order to cancel payment with miles you can use this endpoint. It allows to cancel payment only related GSM and terminal ID numbers.
> 
> You can try this endpoint with configuring client parameters in Console Tab below. Test OAuthClientId is b30359c21700fd6f2b91154adcb7b37bab3e7e0a33e22682e5dd149d7a6ac4df
> and OAuthClientSecret is 4bc4335faad41d6a23cd059e495005f00496a64e34e6187b1d72695a8debd28c


```ruby
def delete_cancel_mile_payment(miles_payment_provision_id,
                                   body); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| miles_payment_provision_id |  ``` Required ```  | Provision ID. |
| body |  ``` Required ```  | The body of the request. |


#### Example Usage

```ruby
miles_payment_provision_id = 239
body = CancelMilePaymentRequest.new

result = payWithMiles_controller.delete_cancel_mile_payment(miles_payment_provision_id, body)

```


### <a name="update_complete_mile_payment"></a>![Method: ](https://apidocs.io/img/method.png ".PayWithMilesController.update_complete_mile_payment") update_complete_mile_payment

> In order to finalize payment with miles use this endpoint. Use the OTP number which is send to user GSM on the Request body.
> 
> You can try this endpoint with configuring client parameters in Console Tab below. Test OAuthClientId is b30359c21700fd6f2b91154adcb7b37bab3e7e0a33e22682e5dd149d7a6ac4df
> and OAuthClientSecret is 4bc4335faad41d6a23cd059e495005f00496a64e34e6187b1d72695a8debd28c


```ruby
def update_complete_mile_payment(miles_payment_provision_id,
                                     body); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| miles_payment_provision_id |  ``` Required ```  | Provision ID. |
| body |  ``` Required ```  | The body of the request. |


#### Example Usage

```ruby
miles_payment_provision_id = 239
body = CompleteMilePaymentRequest.new

result = payWithMiles_controller.update_complete_mile_payment(miles_payment_provision_id, body)

```


### <a name="create_start_mile_payment"></a>![Method: ](https://apidocs.io/img/method.png ".PayWithMilesController.create_start_mile_payment") create_start_mile_payment

> After getting customer info's and RecognitionID to start Payment with Miles Use this endpoint.
> After calling this endpoint successfully OTP code send to customer GSM number. This OTP must be used with Complete endpoint in order to complete payment.
> 
> You can try this endpoint with configuring client parameters in Console Tab below. Test OAuthClientId is b30359c21700fd6f2b91154adcb7b37bab3e7e0a33e22682e5dd149d7a6ac4df
> and OAuthClientSecret is 4bc4335faad41d6a23cd059e495005f00496a64e34e6187b1d72695a8debd28c


```ruby
def create_start_mile_payment(body); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| body |  ``` Required ```  | The body of the request. |


#### Example Usage

```ruby
body = StartMilePaymentRequest.new

result = payWithMiles_controller.create_start_mile_payment(body)

```


### <a name="get_mile_provisions"></a>![Method: ](https://apidocs.io/img/method.png ".PayWithMilesController.get_mile_provisions") get_mile_provisions

> Before cancelling the payment with miles this endpoint is used to list the related sale.
> 
> You can try this endpoint with configuring client parameters in Console Tab below. Test OAuthClientId is b30359c21700fd6f2b91154adcb7b37bab3e7e0a33e22682e5dd149d7a6ac4df
> and OAuthClientSecret is 4bc4335faad41d6a23cd059e495005f00496a64e34e6187b1d72695a8debd28c


```ruby
def get_mile_provisions(read_code,
                            read_code_type,
                            terminal_id); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| read_code |  ``` Required ```  | Customer Identification Method; GSM, FFP ID, CODE or EMAIL. |
| read_code_type |  ``` Required ```  | 1: GSM, 2: FFP ID, 3: CODE, 4: EMAIL |
| terminal_id |  ``` Required ```  | Terminal ID. |


#### Example Usage

```ruby
read_code = 'read_code'
read_code_type = 'read_code_type'
terminal_id = 'terminal_id'

result = payWithMiles_controller.get_mile_provisions(read_code, read_code_type, terminal_id)

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
def create_authentication(body); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| body |  ``` Required ```  | The body of the request. |


#### Example Usage

```ruby
body = OAuthRequest.new

result = authentication_controller.create_authentication(body)

```


[Back to List of Controllers](#list_of_controllers)

## <a name="earn_miles_controller"></a>![Class: ](https://apidocs.io/img/class.png ".EarnMilesController") EarnMilesController

### Get singleton instance

The singleton instance of the ``` EarnMilesController ``` class can be accessed from the API Client.

```ruby
earnMiles_controller = client.earn_miles
```

### <a name="create_transaction_result"></a>![Method: ](https://apidocs.io/img/method.png ".EarnMilesController.create_transaction_result") create_transaction_result

> After getting customer info by Get Customer Info endpoint and finished the shopping procedure in POS terminal, use this endpoint to complete transaction.
> 
> You can try this endpoint with configuring client parameters in Console Tab below. Test OAuthClientId is b30359c21700fd6f2b91154adcb7b37bab3e7e0a33e22682e5dd149d7a6ac4df
> and OAuthClientSecret is 4bc4335faad41d6a23cd059e495005f00496a64e34e6187b1d72695a8debd28c


```ruby
def create_transaction_result(body); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| body |  ``` Required ```  | The body of the request. |


#### Example Usage

```ruby
body = TransactionResultRequest.new

result = earnMiles_controller.create_transaction_result(body)

```


[Back to List of Controllers](#list_of_controllers)

## <a name="common_controller"></a>![Class: ](https://apidocs.io/img/class.png ".CommonController") CommonController

### Get singleton instance

The singleton instance of the ``` CommonController ``` class can be accessed from the API Client.

```ruby
common_controller = client.common
```

### <a name="get_terminal_info"></a>![Method: ](https://apidocs.io/img/method.png ".CommonController.get_terminal_info") get_terminal_info

> This endpoint will help you to get terminal settings in order to use internal operations.
> 
> You can try this endpoint with configuring client parameters in Console Tab below. Test OAuthClientId is b30359c21700fd6f2b91154adcb7b37bab3e7e0a33e22682e5dd149d7a6ac4df
> and OAuthClientSecret is 4bc4335faad41d6a23cd059e495005f00496a64e34e6187b1d72695a8debd28c


```ruby
def get_terminal_info(terminal_id); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| terminal_id |  ``` Required ```  | Terminal ID. |


#### Example Usage

```ruby
terminal_id = 'terminal_id'

result = common_controller.get_terminal_info(terminal_id)

```


### <a name="get_customer_info"></a>![Method: ](https://apidocs.io/img/method.png ".CommonController.get_customer_info") get_customer_info

> This endpoint will help you to get customer's miles amount as a currency and unique identifier value. Unique identifier value must be used by Transaction Result endpint in order to complete shopping.
> 
> You can try this API with configuring client parameters in Console Tab below. Test OAuthClientId is b30359c21700fd6f2b91154adcb7b37bab3e7e0a33e22682e5dd149d7a6ac4df
> and OAuthClientSecret is 4bc4335faad41d6a23cd059e495005f00496a64e34e6187b1d72695a8debd28c
> You can try this API with configuring client parameters in Console Tab below. Test OAuthClientId is b30359c21700fd6f2b91154adcb7b37bab3e7e0a33e22682e5dd149d7a6ac4df
> and OAuthClientSecret is 4bc4335faad41d6a23cd059e495005f00496a64e34e6187b1d72695a8debd28c


```ruby
def get_customer_info(read_code,
                          read_code_type,
                          total_amount,
                          total_vat_amount,
                          currency,
                          partner_id,
                          branch_id,
                          terminal_id); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| read_code |  ``` Required ```  | Customer Identification Method; GSM, FFP ID, CODE or EMAIL |
| read_code_type |  ``` Required ```  | 1: GSM, 2: FFP ID, 3: CODE, 4: EMAIL |
| total_amount |  ``` Required ```  | Total receipt amount. |
| total_vat_amount |  ``` Required ```  | Total tax value. |
| currency |  ``` Required ```  | ISO-4217 3-letter currency code. |
| partner_id |  ``` Required ```  | Partner ID. |
| branch_id |  ``` Required ```  | Branch ID. |
| terminal_id |  ``` Required ```  | Terminal ID. |


#### Example Usage

```ruby
read_code = 'read_code'
read_code_type = 'read_code_type'
total_amount = 239.494172504402
total_vat_amount = 239.494172504402
currency = 'currency'
partner_id = 239
branch_id = 239
terminal_id = 'terminal_id'

result = common_controller.get_customer_info(read_code, read_code_type, total_amount, total_vat_amount, currency, partner_id, branch_id, terminal_id)

```


### <a name="upload_receipt_pictures"></a>![Method: ](https://apidocs.io/img/method.png ".CommonController.upload_receipt_pictures") upload_receipt_pictures

> This endpoint will help you to upload receipt pictures which is related with a recognition ID and a transaction result.
> 
> You can try this endoint with configuring client parameters in Console Tab below. Test OAuthClientId is b30359c21700fd6f2b91154adcb7b37bab3e7e0a33e22682e5dd149d7a6ac4df
> and OAuthClientSecret is 4bc4335faad41d6a23cd059e495005f00496a64e34e6187b1d72695a8debd28c
> You can try this API with configuring client parameters in Console Tab below. Test OAuthClientId is b30359c21700fd6f2b91154adcb7b37bab3e7e0a33e22682e5dd149d7a6ac4df
> and OAuthClientSecret is 4bc4335faad41d6a23cd059e495005f00496a64e34e6187b1d72695a8debd28c


```ruby
def upload_receipt_pictures(body); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| body |  ``` Required ```  | The body of the request. |


#### Example Usage

```ruby
body = ReceiptPictureRequest.new

result = common_controller.upload_receipt_pictures(body)

```


[Back to List of Controllers](#list_of_controllers)



