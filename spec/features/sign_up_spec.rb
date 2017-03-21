# As a user,
# So that I can use the MakersBnB,
# I can sign up with a name, an email address and a password.

feature 'Signing up' do

  scenario 'user can sign up' do
    visit '/'
    click_link 'Sign up'
    fill_in 'name', with: 'Alex'
    fill_in 'email', with: 'aleximm@immsinns.com'
    fill_in 'password', with: 'secret123'
    click_button "Submit"
    expect(page).to have_content "Welcome Alex"
  end
end
