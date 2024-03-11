require "spec_helper"
require "clover_api/tax_api"
require "net/http"

RSpec.describe Cloverapi::TaxApi do
  let(:api_token) { ENV["API_TOKEN"] }
  let(:merchant_id) { ENV["MERCHANT_ID"] }

  describe "#get_tax_rates" do
    it "returns tax rates within specified time range" do
      start_time = Time.now - 3600
      end_time = Time.now
      tax_api = described_class.new(api_token, merchant_id)
      tax_rates = tax_api.get_tax_rates(start_time, end_time)
      expect(tax_rates).to be_an(Array)
    end
  end

  describe "#calculate_total_taxes" do
    it "calculates total taxes within specified time range" do
      start_time = Time.now - 3600
      end_time = Time.now
      tax_api = described_class.new(api_token, merchant_id)
      total_taxes = tax_api.calculate_total_taxes(start_time, end_time)

      expected_total_taxes = [
        { "id" => "DESTJXFKP7YT8", "name" => "Second Tax", "taxType" => "VAT_TAXABLE", "rate" => 2_000, "isDefault" => false },
        { "id" => "21V42JY1XA9SC", "name" => "Test Tax", "rate" => 345_000, "isDefault" => true },
        { "id" => "0WDCNCBYVXBVM", "name" => "NO_TAX_APPLIED", "rate" => 0, "isDefault" => false },
      ].sum { |tax| tax["rate"].to_f }

      expect(total_taxes) == (expected_total_taxes)
    end
  end
end
