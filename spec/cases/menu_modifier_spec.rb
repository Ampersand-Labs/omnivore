require 'spec_helper'

describe "OmnivoreApi::Api::MenuModifier" do
  before(:each) do
    @location_id = '4cxjnnTL'
    api_key = ENV['OMNIVORE_API_KEY']
    @service = OmnivoreApi::Client.new api_key
  end

  it "gets menu modifiers" do
    menu_modifiers = @service.menu_modifier.list @location_id
    puts menu_modifiers
    expect(menu_modifiers).to be
  end

  it "gets an menu modifier" do
    modifier_id = 'zRcEkcj8'
    menu_modifier = @service.menu_modifier.retrieve @location_id, modifier_id
    puts menu_modifier
    expect(menu_modifier).to be
  end
end