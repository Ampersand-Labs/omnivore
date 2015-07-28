require 'spec_helper'

describe "OmnivoreApi::Api::MenuItem" do
  before(:each) do
    @location_id = '4cxjnnTL'
    api_key = ENV['OMNIVORE_API_KEY']
    @service = OmnivoreApi::Client.new api_key
  end

  it "gets menu items" do
    menu_items = @service.menu_item.list @location_id
    puts menu_items
    expect(menu_items).to be
  end

  it "gets an menu item" do
    menu_item_id = 'rMTAbTjr'
    menu_item = @service.menu_item.retrieve @location_id, menu_item_id
    puts menu_item
    expect(menu_item).to be
  end
end