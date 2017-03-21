feature 'As a user' do
  scenario 'I can list a property' do
    visit '/'
    click_link 'Sign up'
    fill_in 'name', with: 'Alex'
    fill_in 'email', with: 'aleximm@immsinns.com'
    fill_in 'password', with: 'secret123'
    click_button("Submit")
    click_button('List Property')
    expect(current_path).to eq '/property/new'
    fill_in :title, with: "Imm's Inn"
    fill_in :description, with: "Very Nice"
    fill_in :price_per_night, with: "50"
    fill_in :location, with: "London"
    fill_in :available, with: "march"
    click_button('Submit')
    expect(page).to have_content("Imm's Inn")
  end
end
