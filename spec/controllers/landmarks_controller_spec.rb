require 'spec_helper'

describe LandmarksController do
  before do
    Landmark.create(name: 'BQE', year_completed: '1961')
  end

  after do
    Landmark.destroy_all
  end

  it "allows you to create a new landmark" do
    get '/landmarks/new'
    expect(last_response.status).to eq(200)
  end

  it "allows you to list all landmarks" do
    get '/landmarks'
    expect(last_response.status).to eq(200)
  end

  it "allows you to see a single landmark" do
    @landmark = Landmark.first.id
    get "/landmarks/#{@landmark}"
    expect(last_response.status).to eq(200)
  end

  it "allows you to edit a single landmark" do
    @landmark = Landmark.first.id

    #expect there to be an edit button on the single landmark page
    get "/landmarks/#{@landmark}/edit"

    expect(last_response.status).to eq(200)
  end
end
