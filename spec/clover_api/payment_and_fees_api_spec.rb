require "spec_helper"
require "clover_api/payment_and_fees_api"
require "net/http"

RSpec.describe Cloverapi::PaymentAndFeesApi do
  let(:api_token) { ENV["API_TOKEN"] }
  let(:merchant_id) { ENV["MERCHANT_ID"] }

  describe "#get_payments_in_period" do
    it "returns payments within specified time range" do
      start_time = Time.now - 3600
      end_time = Time.now
      payment_api = described_class.new(api_token, merchant_id)
      payments = payment_api.get_payments_in_period(start_time, end_time)
      # puts "Payments retrieved: #{payments}"
      expect(payments).to be_a(Hash)
    end
  end

  describe "#calculate_revenue_per_processor" do
    it "calculates revenue per processor within specified time range" do
      start_time = Time.now - 3600
      end_time = Time.now
      payment_api = described_class.new(api_token, merchant_id)
      revenue_per_processor = payment_api.calculate_revenue_per_processor(start_time, end_time)
      # puts "Calculated Revenue Per Processor: #{revenue_per_processor}"
      expect(revenue_per_processor).to be_a(Hash)
    end
  end

  describe "#calculate_processor_fees" do
    it "calculates processor fees within specified time range" do
      start_time = Time.now - 3600
      end_time = Time.now
      payment_api = described_class.new(api_token, merchant_id)
      processor_fees = payment_api.calculate_processor_fees(start_time, end_time)
      # puts "Calculated Processor Fees: #{processor_fees}"
      expect(processor_fees).to be_a(Hash)
    end
  end
end
