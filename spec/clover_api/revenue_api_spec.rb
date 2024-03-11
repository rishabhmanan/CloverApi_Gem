require "spec_helper"
require "clover_api/revenue_api"
require "net/http"

RSpec.describe Cloverapi::RevenueApi do
  let(:api_token) { ENV["API_TOKEN"] }
  let(:merchant_id) { ENV["MERCHANT_ID"] }

  describe "#get_orders" do
    it "returns orders within specified time range" do
      start_time = Time.now - 3600
      end_time = Time.now
      revenue_api = described_class.new(api_token, merchant_id)
      orders = revenue_api.get_orders(start_time, end_time)
      expect(orders).to be_an(Array)
    end
  end

  describe "#get_line_items_for_orders" do
    it "returns line items for given orders" do
      orders = [{ "id" => "order_id_1" }, { "id" => "order_id_2" }]
      revenue_api = described_class.new(api_token, merchant_id)
      line_items = revenue_api.get_line_items_for_orders(orders)

      expect(line_items).to be_an(Array)
    end
  end

  describe "#calculate_revenue_per_product" do
    it "calculates revenue per product within specified time range" do
      start_time = Time.now - 3600
      end_time = Time.now
      revenue_api = described_class.new(api_token, merchant_id)
      revenue_per_product = revenue_api.calculate_revenue_per_product(start_time, end_time)
      expect(revenue_per_product).to be_a(Hash)
    end
  end
end
