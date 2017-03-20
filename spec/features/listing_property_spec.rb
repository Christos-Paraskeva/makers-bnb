#require 'spec_helper'

feature 'As a user' do
  scenario 'I can list a property' do
    visit ('/property')
    click_button('List Property')
    expect(current_path).to eq '/property/new'

    within '/property/new' do
      expect(page).to have_content('Name')
      expect(page).to have_content('Description')
      expect(page).to have_content('Price Per Night')
    end
  end
end
