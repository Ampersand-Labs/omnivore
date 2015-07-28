require 'spec_helper'

describe "OmnivoreApi::Api::MenuCategory" do
  before(:each) do
    @location_id = '4cxjnnTL'
    api_key = ENV['OMNIVORE_API_KEY']
    @service = OmnivoreApi::Client.new api_key
  end

  it "gets menu categories" do
    menu_categories = @service.menu_category.list @location_id
    puts menu_categories
    expect(menu_categories).to be
  end

  it "gets an menu category" do
    category_id = 'zRcEkcj8'
    menu_category = @service.menu_category.retrieve @location_id, category_id
    puts menu_category
    expect(menu_category).to be
  end
end