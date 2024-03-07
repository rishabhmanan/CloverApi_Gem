
require 'clover_api/discount_api'
require 'spec_helper'
require 'net/http'

RSpec.describe Cloverapi::DiscountApi do
  let(:api_token) { ENV['API_TOKEN'] }
  let(:merchant_id) { ENV['MERCHANT_ID'] }

  describe '#get_discount' do
    it 'returns discounts within specified time range' do
      start_time = Time.now - 3600
      end_time = Time.now
      discount_api = described_class.new(api_token, merchant_id)
      discounts = discount_api.get_discount(start_time, end_time)
      expect(discounts).to be_an(Array)
    end
  end

  describe '#calculate_total_discounts' do
    it 'calculates total discounts within specified time range' do
      start_time = Time.now - 3600
      end_time = Time.now
      discount_api = described_class.new(api_token, merchant_id)
      total_discounts = discount_api.calculate_total_discounts(start_time, end_time)
      expect(total_discounts).to be_an(Array).or be_nil
    end
  end
end
