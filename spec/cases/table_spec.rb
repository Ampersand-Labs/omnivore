require 'spec_helper'

describe "OmnivoreApi::Api::Table" do
  before(:each) do
    @location_id = '4cxjnnTL'
    api_key = ENV['OMNIVORE_API_KEY']
    @service = OmnivoreApi::Client.new api_key
  end

  it "gets tables" do
    tables = @service.table.list @location_id
    puts tables
    expect(tables).to be
  end

  it "gets a table" do
    table_id = 'AETa4Tdq'
    table = @service.table.retrieve @location_id, table_id
    puts table
    expect(table).to be
  end
end