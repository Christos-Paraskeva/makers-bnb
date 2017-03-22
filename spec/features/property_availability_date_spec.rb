feature 'Property has available date range' do
  scenario 'Renters can select only available properties' do
    visit '/'
    user_sign_up
    click_button('List Property')
    fill_in :title, with: "Imm's Inn"
    fill_in :description, with: "Very Nice"
    fill_in :price_per_night, with: "50"
    fill_in :location, with: "London"
    fill_in :available_from, with: "2017-01-05"
    click_button "Submit"
    expect(page).to have_content("Imm's Inn")
    expect(page).to have_content("05/01/2017")
  end
end
