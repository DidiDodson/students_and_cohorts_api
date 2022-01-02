require 'rails_helper'

describe "Students API" do
  it "sends a list of students" do

    get '/api/v1/students'

    expect(response).to be_successful

    students = JSON.parse(response.body, symbolize_names: true)
  end
end
