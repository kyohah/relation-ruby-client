=begin
#Re:lation API

#https://developer.ingage.jp/

The version of the OpenAPI document: 1.0.0

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 6.1.0

=end

# Common files
require 'relation_client/api_client'
require 'relation_client/api_error'
require 'relation_client/version'
require 'relation_client/configuration'

# Models
require 'relation_client/models/customer'
require 'relation_client/models/message_box'
require 'relation_client/models/record_request'
require 'relation_client/models/record_response'

# APIs
require 'relation_client/api/message_box_api'

module RelationClient
  class << self
    # Customize default settings for the SDK using block.
    #   RelationClient.configure do |config|
    #     config.username = "xxx"
    #     config.password = "xxx"
    #   end
    # If no block given, return the default Configuration object.
    def configure
      if block_given?
        yield(Configuration.default)
      else
        Configuration.default
      end
    end
  end
end
