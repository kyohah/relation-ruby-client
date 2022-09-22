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
- **Accept**: application/json; charset=utf-8


## message_box_id_records_post

> <Record> message_box_id_records_post(message_box_id, subject, operated_at, operator, duration, body, opts)

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
subject = 'subject_example' # String | 件名
operated_at = Date.parse('Sun Sep 11 09:00:00 JST 2022') # Date | 対応日時(ISO 8601 形式。過去の日時のみ。)
operator = 'operator_example' # String | 対応者のメンション名
duration = 56 # Integer | 対応時間(0〜1440の数値。分単位。)
body = 'body_example' # String | 本文
opts = {
  ticket_id: 56, # Integer | チケットID
  status_cd: 'open', # String | ステータス
  customer_email: 'customer_email_example', # String | 顧客メールアドレス
  customer_tel: 'customer_tel_example', # String | 顧客電話番号
  icon_cd: 'received_phone', # String | 対応種別
  is_html: true, # Boolean | 
  assignee: 'assignee_example' # String | 
}

begin
  # 応答メモ作成
  result = api_instance.message_box_id_records_post(message_box_id, subject, operated_at, operator, duration, body, opts)
  p result
rescue RelationClient::ApiError => e
  puts "Error when calling MessageBoxApi->message_box_id_records_post: #{e}"
end
```

#### Using the message_box_id_records_post_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Record>, Integer, Hash)> message_box_id_records_post_with_http_info(message_box_id, subject, operated_at, operator, duration, body, opts)

```ruby
begin
  # 応答メモ作成
  data, status_code, headers = api_instance.message_box_id_records_post_with_http_info(message_box_id, subject, operated_at, operator, duration, body, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Record>
rescue RelationClient::ApiError => e
  puts "Error when calling MessageBoxApi->message_box_id_records_post_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **message_box_id** | **Integer** | 受信箱ID(数字) |  |
| **subject** | **String** | 件名 |  |
| **operated_at** | **Date** | 対応日時(ISO 8601 形式。過去の日時のみ。) |  |
| **operator** | **String** | 対応者のメンション名 |  |
| **duration** | **Integer** | 対応時間(0〜1440の数値。分単位。) |  |
| **body** | **String** | 本文 |  |
| **ticket_id** | **Integer** | チケットID | [optional] |
| **status_cd** | **String** | ステータス | [optional] |
| **customer_email** | **String** | 顧客メールアドレス | [optional] |
| **customer_tel** | **String** | 顧客電話番号 | [optional] |
| **icon_cd** | **String** | 対応種別 | [optional] |
| **is_html** | **Boolean** |  | [optional] |
| **assignee** | **String** |  | [optional] |

### Return type

[**Record**](Record.md)

### Authorization

[bearer](../README.md#bearer)

### HTTP request headers

- **Content-Type**: Not defined
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

