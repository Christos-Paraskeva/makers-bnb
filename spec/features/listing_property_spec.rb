#require 'spec_helper'

feature 'As a user' do
  scenario 'I can list a property' do
    visit ('/property')
    click_button('List Property')
    expect(current_path).to eq '/property/new'
    fill_in :name, with: "Imm's Inn"
    # fill_in :description, with: "Very Nice"
    # fill_in :price_per_night, with: "£50"
    # fill_in :location, with: "London"
    # fill_in :available, with: "march"
    click_button('Submit')
    expect(page).to have_content("Imm's Inn")
  end
end
