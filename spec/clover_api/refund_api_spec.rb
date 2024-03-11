require "spec_helper"
require "clover_api/refund_api"
require "net/http"

RSpec.describe Cloverapi::RefundApi do
  let(:api_token) { ENV["API_TOKEN"] }
  let(:merchant_id) { ENV["MERCHANT_ID"] }

  describe "#get_orders" do
    it "returns orders within specified time range" do
      start_time = Time.now - 3600
      end_time = Time.now
      refund_api = described_class.new(api_token, merchant_id)
      orders = refund_api.get_orders(start_time, end_time)
      expect(orders).to be_an(Array)
    end
  end

  describe "#calculate_total_refunds" do
    it "calculates total refunds within specified time range" do
      start_time = Time.now - 3600
      end_time = Time.now
      refund_api = described_class.new(api_token, merchant_id)
      total_refunds = refund_api.calculate_total_refunds(start_time, end_time)
      expect(total_refunds).to be_a(Float).or(eq(0))
    end
  end
end
