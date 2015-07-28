module OmnivoreApi
  module Api
    class RevenueCenter < Base
      
      def list location_id
        @client.get("/locations/#{location_id}/revenue_centers").body
      end

      def retrieve location_id, revenue_center_id
        @client.get("/locations/#{location_id}/revenue_centers/#{revenue_center_id}").body
      end

    end
  end
end