module Cloverapi
  class Configuration
    class << self
      def api_token
        ENV("API_TOKEN")
      end

      def merchant_id
        ENV("MERCHANT_ID")
      end
    end
  end
end
