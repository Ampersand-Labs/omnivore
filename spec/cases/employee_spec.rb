require 'spec_helper'

describe "OmnivoreApi::Api::Employee" do
  before(:each) do
    @location_id = '4cxjnnTL'
    api_key = ENV['OMNIVORE_API_KEY']
    @service = OmnivoreApi::Client.new api_key
  end

  it "gets employees" do
    employees = @service.employee.list @location_id
    expect(employees).to be
  end

  it "gets an employee" do
    employee_id = 'MjikgioG'
    employee = @service.employee.retrieve @location_id, employee_id
    expect(employee).to be
  end
end