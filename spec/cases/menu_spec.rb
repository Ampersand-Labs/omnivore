require 'spec_helper'

describe "OmnivoreApi::Api::Ticket" do
  before(:each) do
    @location_id = '4cxjnnTL'
    api_key = 'd4c6b7e87d9942f28fcad1deadcede0f'
    @service = OmnivoreApi::Client.new api_key
  end

  it "gets menu" do
    menu_item = @service.menu.retrieve @location_id
    puts menu_item
    expect(menu_item).to be
  end
end
