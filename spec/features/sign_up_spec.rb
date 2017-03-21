# As a user,
# So that I can use the MakersBnB,
# I can sign up with a name, an email address and a password.

feature 'Signing up' do

  scenario 'user can sign up' do
    visit '/'
    user_sign_up
    expect(page).to have_content "Welcome Alex"
  end
end
