require 'json'
require 'net/http'
require 'uri'
require "time"

require 'active_support/all'
require_relative 'clover_api/discount_api'
require_relative 'clover_api/payment_and_fees_api'
require_relative 'clover_api/refund_api'
require_relative 'clover_api/revenue_api'
require_relative 'clover_api/tax_api'
require_relative 'clover_api/tips_api'

module Cloverapi
end
