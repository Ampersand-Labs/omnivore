require 'spec_helper'

describe "OmnivoreApi::Api::OrderType" do
  before(:each) do
    @location_id = '4cxjnnTL'
    api_key = ENV['OMNIVORE_API_KEY']
    @service = OmnivoreApi::Client.new api_key
  end

  it "gets order types" do
    order_types = @service.order_type.list @location_id
    puts order_types
    expect(order_types).to be
  end

  it "gets an order type" do
    order_type_id = 'jLTqoTba'
    order_type = @service.order_type.retrieve @location_id, order_type_id
    puts order_type
    expect(order_type).to be
  end
end