feature 'Property has available date range' do
  scenario 'Renters can see available start date' do
    visit '/'
    user_sign_up
    click_link('List Property')
    fill_in :title, with: "Imm's Inn"
    fill_in :description, with: "Very Nice"
    fill_in :price_per_night, with: "50"
    fill_in :location, with: "London"
    fill_in :available_from, with: "05-01-2017"
    fill_in :available_to, with: "09-02-2017"
    click_button "Submit"
    expect(page).to have_content("Imm's Inn")
    expect(page).to have_content("05/01/2017")
  end

  scenario 'Renters can see available end date' do
    visit '/'
    user_sign_up
    click_link('List Property')
    fill_in :title, with: "Imm's Inn"
    fill_in :description, with: "Very Nice"
    fill_in :price_per_night, with: "50"
    fill_in :location, with: "London"
    fill_in :available_from, with: "05-01-2017"
    fill_in :available_to, with: "09-02-2017"
    click_button "Submit"
    expect(page).to have_content("Imm's Inn")
    expect(page).to have_content("09/02/2017")
  end
end
