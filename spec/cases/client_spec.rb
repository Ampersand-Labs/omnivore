require 'spec_helper'

describe "OmnivoreApi::Client" do
  it "has an attr_reader for access token" do
    api_key = 'adfadf'
    service = OmnivoreApi::Client.new api_key
    expect(service.api_key).to eq(api_key)
  end

  it "has an attr_reader for server" do
    service = OmnivoreApi::Client.new double
    expect(service.server).to eq('https://api.omnivore.io')
  end
end