require 'spec_helper'

describe "Landmarks Features", :type => :feature do
  before do
    Landmark.create(name: 'BQE', year_completed: '1961')
  end

  after do
    Landmark.destroy_all
  end

  it "it creates a new landmark" do

    visit "/landmarks/new"
    fill_in('landmark[name]', :with => 'A new landmark!')
    fill_in('landmark[year_completed]', :with => '2015')

    click_button('Submit')
    expect(current_path).to eq "/landmarks"
    expect(page).to have_content 'A new landmark!'


  end

  it "it edits and updates a landmark" do

    @landmark = Landmark.create(name: 'Test landmark', year_completed: '2015')

    visit "/landmarks/#{@landmark.id}/edit"
    fill_in('landmark[year_completed]', :with => '1950')
    click_button('Save Changes')
    expect(current_path).to eq "/landmarks/#{@landmark.id}"
    expect(page).to have_content '1950'
  end

end
