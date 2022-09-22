# RelationClient::RecordRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **ticket_id** | **Integer** |  | [optional] |
| **subject** | **String** | 件名 | [optional] |
| **status_cd** | **String** | ステータス | [optional] |
| **operated_at** | **Date** | 対応日時(ISO 8601 形式。過去の日時のみ。) | [optional] |
| **operator** | **String** | 対応者のメンション名 | [optional] |
| **duration** | **Integer** | 対応時間(0〜1440の数値。分単位。) | [optional] |
| **body** | **String** | 本文 | [optional] |
| **customer_email** | **String** | 顧客メールアドレス | [optional] |
| **customer_tel** | **String** | 顧客電話番号 | [optional] |
| **icon_cd** | **String** | 対応種別 | [optional] |
| **is_html** | **Boolean** |  | [optional] |
| **assignee** | **String** |  | [optional] |

## Example

```ruby
require 'relation_client'

instance = RelationClient::RecordRequest.new(
  ticket_id: null,
  subject: null,
  status_cd: null,
  operated_at: Sun Sep 11 09:00:00 JST 2022,
  operator: null,
  duration: null,
  body: null,
  customer_email: test@example.com,
  customer_tel: 09000000000,
  icon_cd: null,
  is_html: null,
  assignee: null
)
```

