require 'spec_helper'

describe "OmnivoreApi::Api::Location" do
  before(:each) do
    @location_id = '4cxjnnTL'
    api_key = ENV['OMNIVORE_API_KEY']
    @service = OmnivoreApi::Client.new api_key
  end

  it "gets locations" do
    locations = @service.location.list
    expect(locations).to be
  end

  it "gets an location" do
    location = @service.location.retrieve @location_id
    expect(location).to be
  end
end