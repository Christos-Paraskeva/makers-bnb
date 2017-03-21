# As a user,
# So that I can choose a place to rent
# I will have the contact details for the host.

feature 'As a user' do
  scenario "I can see host's contact details" do
    visit '/'
    user_sign_up
    click_button('List Property')
    list_a_new_property
    expect(page).to have_content("aleximm@immsinns.com")
  end
end
