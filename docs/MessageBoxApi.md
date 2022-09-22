# RelationClient::MessageBoxApi

All URIs are relative to *http://https:#*.relationapp.jp/api/v2*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**message_box_id_customers_post**](MessageBoxApi.md#message_box_id_customers_post) | **POST** /{message_box_id}/customers | 登録 |
| [**message_box_id_records_post**](MessageBoxApi.md#message_box_id_records_post) | **POST** /{message_box_id}/records | 応答メモ作成 |
| [**message_boxes_get**](MessageBoxApi.md#message_boxes_get) | **GET** /message_boxes | 一覧取得 |


## message_box_id_customers_post

> <Customer> message_box_id_customers_post(message_box_id)

登録

### Examples

```ruby
require 'time'
require 'relation_client'
# setup authorization
RelationClient.configure do |config|
  # Configure Bearer authorization (JWT): bearer
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = RelationClient::MessageBoxApi.new
message_box_id = 789 # Integer | Parameter description in CommonMark or HTML.

begin
  # 登録
  result = api_instance.message_box_id_customers_post(message_box_id)
  p result
rescue RelationClient::ApiError => e
  puts "Error when calling MessageBoxApi->message_box_id_customers_post: #{e}"
end
```

#### Using the message_box_id_customers_post_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Customer>, Integer, Hash)> message_box_id_customers_post_with_http_info(message_box_id)

```ruby
begin
  # 登録
  data, status_code, headers = api_instance.message_box_id_customers_post_with_http_info(message_box_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Customer>
rescue RelationClient::ApiError => e
  puts "Error when calling MessageBoxApi->message_box_id_customers_post_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **message_box_id** | **Integer** | Parameter description in CommonMark or HTML. |  |

### Return type

[**Customer**](Customer.md)

### Authorization

[bearer](../README.md#bearer)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## message_box_id_records_post

> <RecordResponse> message_box_id_records_post(message_box_id, opts)

応答メモ作成

### Examples

```ruby
require 'time'
require 'relation_client'
# setup authorization
RelationClient.configure do |config|
  # Configure Bearer authorization (JWT): bearer
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = RelationClient::MessageBoxApi.new
message_box_id = 56 # Integer | 受信箱ID(数字)
opts = {
  record_request: RelationClient::RecordRequest.new # RecordRequest | user to create
}

begin
  # 応答メモ作成
  result = api_instance.message_box_id_records_post(message_box_id, opts)
  p result
rescue RelationClient::ApiError => e
  puts "Error when calling MessageBoxApi->message_box_id_records_post: #{e}"
end
```

#### Using the message_box_id_records_post_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<RecordResponse>, Integer, Hash)> message_box_id_records_post_with_http_info(message_box_id, opts)

```ruby
begin
  # 応答メモ作成
  data, status_code, headers = api_instance.message_box_id_records_post_with_http_info(message_box_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <RecordResponse>
rescue RelationClient::ApiError => e
  puts "Error when calling MessageBoxApi->message_box_id_records_post_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **message_box_id** | **Integer** | 受信箱ID(数字) |  |
| **record_request** | [**RecordRequest**](RecordRequest.md) | user to create | [optional] |

### Return type

[**RecordResponse**](RecordResponse.md)

### Authorization

[bearer](../README.md#bearer)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## message_boxes_get

> <Array<MessageBox>> message_boxes_get

一覧取得

### Examples

```ruby
require 'time'
require 'relation_client'
# setup authorization
RelationClient.configure do |config|
  # Configure Bearer authorization (JWT): bearer
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = RelationClient::MessageBoxApi.new

begin
  # 一覧取得
  result = api_instance.message_boxes_get
  p result
rescue RelationClient::ApiError => e
  puts "Error when calling MessageBoxApi->message_boxes_get: #{e}"
end
```

#### Using the message_boxes_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<MessageBox>>, Integer, Hash)> message_boxes_get_with_http_info

```ruby
begin
  # 一覧取得
  data, status_code, headers = api_instance.message_boxes_get_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<MessageBox>>
rescue RelationClient::ApiError => e
  puts "Error when calling MessageBoxApi->message_boxes_get_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**Array&lt;MessageBox&gt;**](MessageBox.md)

### Authorization

[bearer](../README.md#bearer)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

