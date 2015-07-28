require 'spec_helper'

describe "OmnivoreApi::Api::MenuModifierGroup" do
  before(:each) do
    @location_id = '4cxjnnTL'
    @menu_item_id = 'rMTAbTjr'
    api_key = ENV['OMNIVORE_API_KEY']
    @service = OmnivoreApi::Client.new api_key
  end

  it "gets menu modifier groups" do
    menu_modifier_groups = @service.menu_modifier_group.list @location_id, @menu_item_id
    puts menu_modifier_groups
    expect(menu_modifier_groups).to be
  end

  it "gets an menu modifier group" do
    modifier_group_id = 'eMiy4iR4'
    menu_modifier_group = @service.menu_modifier_group.retrieve @location_id, @menu_item_id, modifier_group_id
    puts menu_modifier_group
    expect(menu_modifier_group).to be
  end
end