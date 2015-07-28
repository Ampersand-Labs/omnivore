require 'spec_helper'

describe "OmnivoreApi::Api::TenderType" do
  before(:each) do
    @location_id = '4cxjnnTL'
    api_key = ENV['OMNIVORE_API_KEY']
    @service = OmnivoreApi::Client.new api_key
  end

  it "gets tender types" do
    tender_types = @service.tender_type.list @location_id
    puts tender_types
    expect(tender_types).to be
  end

  it "gets a tender type" do
    tender_type_id = 'zoc5KcBo'
    tender_type = @service.tender_type.retrieve @location_id, tender_type_id
    puts tender_type
    expect(tender_type).to be
  end
end