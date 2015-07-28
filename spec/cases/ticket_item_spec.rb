require 'spec_helper'

describe "OmnivoreApi::Api::TicketItem" do
  before(:each) do
    @location_id = '4cxjnnTL'
    @ticket_id = '9Tkk7ziL'
    api_key = ENV['OMNIVORE_API_KEY']
    @service = OmnivoreApi::Client.new api_key
  end

  it "gets ticket items" do
    ticket_items = @service.ticket_item.list @location_id, @ticket_id
    puts ticket_items
    expect(ticket_items).to be
  end

  it "gets a ticket item" do
    ticket_item_id = 'piKjKKc5'
    ticket_item = @service.ticket_item.retrieve @location_id, @ticket_id, ticket_item_id
    puts ticket_item
    expect(ticket_item).to be
  end

  it "adds and voids a ticket item" do
    params = {
      menu_item: 'rMTAbTjr',
      quantity: 2
    }
    ticket_item = @service.ticket_item.add @location_id, @ticket_id, body: params
    puts "------ ADDED -------"
    puts ticket_item
    expect(ticket_item['open']).to eq(true)

    if ticket_item
      deleted_ticket_id = ticket_item['id']
      ticket = @service.ticket_item.void @location_id, @ticket_id, ticket_item['id']
      puts "------ DELETED -------"
      puts ticket
    end

  end

end