require 'spec_helper'

describe "OmnivoreApi::Api::Menu" do
  before(:each) do
    @location_id = '4cxjnnTL'
    api_key = ENV['OMNIVORE_API_KEY']
    @service = OmnivoreApi::Client.new api_key
  end

  it "gets menu" do
    menu_item = @service.menu.retrieve @location_id
    expect(menu_item).to be
  end
end
