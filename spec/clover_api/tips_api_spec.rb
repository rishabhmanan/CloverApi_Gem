require "spec_helper"
require "clover_api/tips_api"
require "net/http"

RSpec.describe Cloverapi::TipsApi do
  let(:api_token) { ENV["API_TOKEN"] }
  let(:merchant_id) { ENV["MERCHANT_ID"] }

  describe "#get_tips" do
    it "returns tips within specified time range" do
      start_time = Time.now - 3600
      end_time = Time.now
      tips_api = described_class.new(api_token, merchant_id)
      tips = tips_api.get_tips(start_time, end_time)
      expect(tips).to be_an(Array)
    end
  end

  describe "#calculate_total_tips" do
    it "calculates total tips within specified time range" do
      start_time = Time.now - 3600
      end_time = Time.now
      tips_api = described_class.new(api_token, merchant_id)
      total_tips = tips_api.calculate_total_tips(start_time, end_time)
      expect(total_tips).to be_a(Float).or(eq(0))
    end
  end
end
