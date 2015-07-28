require 'spec_helper'

describe "OmnivoreApi::Api::Ticket" do
  before(:each) do
    @location_id = '4cxjnnTL'
    api_key = ENV['OMNIVORE_API_KEY']
    @service = OmnivoreApi::Client.new api_key
  end

  it "gets tickets" do
    tickets = @service.ticket.list @location_id
    puts tickets
    expect(tickets).to be
  end

  it "gets a ticket" do
    ticket_id = '9Tkk7ziL'
    ticket = @service.ticket.retrieve @location_id, ticket_id
    puts ticket
    expect(ticket).to be
  end

  it "opens and voids a ticket" do
    name = 'MyTicket'
    params = {
      employee: 'MjikgioG',
      order_type: 'jLTqoTba',
      revenue_center: 'gdTMpTKz',
      guest_count: 4,
      name: name
    }
    ticket = @service.ticket.open @location_id, body: params
    puts "------ OPEN ------"
    puts ticket
    expect(ticket['name']).to eq(name)
    expect(ticket['open']).to eq(true)

    if ticket
      params = { void: true }
      ticket = @service.ticket.void @location_id, ticket['id'], body: params
      puts "------ VOIDED ------"
      puts ticket
      expect(ticket['open']).to eq(false)
    end
  end

end