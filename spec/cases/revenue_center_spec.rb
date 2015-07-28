require 'spec_helper'

describe "OmnivoreApi::Api::RevenueCenter" do
  before(:each) do
    @location_id = '4cxjnnTL'
    api_key = ENV['OMNIVORE_API_KEY']
    @service = OmnivoreApi::Client.new api_key
  end

  it "gets revenue centers" do
    revenue_centers = @service.revenue_center.list @location_id
    puts revenue_centers
    expect(revenue_centers).to be
  end

  it "gets a revenue center" do
    revenue_center_id = 'gdTMpTKz'
    revenue_center = @service.revenue_center.retrieve @location_id, revenue_center_id
    puts revenue_center
    expect(revenue_center).to be
  end
end