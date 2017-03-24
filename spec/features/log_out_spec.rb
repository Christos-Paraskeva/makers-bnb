# As a user,
# So that only I can use my account,
# I can log out.

feature 'As a user' do
  scenario 'I can log out' do
    visit '/'
    user_sign_up
    click_button('Log Out')
    expect(page).not_to have_content("Welcome Alex")
    expect(page).to have_content("Sign up")
  end
end
