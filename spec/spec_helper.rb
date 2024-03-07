
require 'dotenv/load'
require "clover_api/discount_api"
require "clover_api/payment_and_fees_api"
require "clover_api/refund_api"
require "clover_api/revenue_api"
require "clover_api/tax_api"
require "clover_api/tips_api"

RSpec.configure do |config|
  config.example_status_persistence_file_path = ".rspec_status"

  config.disable_monkey_patching!

  config.expect_with :rspec do |c|
    c.syntax = :expect
  end
end
