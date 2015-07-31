module OmnivoreApi
  module Api
    class Payment < Base
      
      def third_party location_id, ticket_id, params = {}
        @client.post("/locations/#{location_id}/tickets/#{ticket_id}/payments", params).body
      end 
    end
  end
end