require 'spec_helper'

describe "OmnivoreApi::Api::TicketItemModifier" do
  before(:each) do
    @location_id = '4cxjnnTL'
    @ticket_id = '9Tkk7ziL'
    @ticket_item_id = 'piKjKKc5'
    api_key = ENV['OMNIVORE_API_KEY']
    @service = OmnivoreApi::Client.new api_key
  end

  it "gets ticket item modifiers" do
    ticket_item_modifiers = @service.ticket_item_modifier.list @location_id, @ticket_id, @ticket_item_id
    puts ticket_item_modifiers
    expect(ticket_item_modifiers).to be
  end

  it "gets a ticket item modifier" do
    ticket_item_modifier_id = 'zRcEkcj8'
    ticket_item_modifier = @service.ticket_item_modifier.retrieve @location_id, @ticket_id, @ticket_item_id, ticket_item_modifier_id
    puts ticket_item_modifier
    expect(ticket_item_modifier).to be
  end
end