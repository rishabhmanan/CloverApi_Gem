require 'json'
require 'net/http'
require 'uri'
require "time"

require 'active_support/all'
require_relative 'clover_api/discount_api.rb'
require_relative 'clover_api/payment_and_fees_api.rb'
require_relative 'clover_api/refund_api.rb'
require_relative 'clover_api/revenue_api.rb'
require_relative 'clover_api/tax_api.rb'
require_relative 'clover_api/tips_api.rb'


module Cloverapi
end
