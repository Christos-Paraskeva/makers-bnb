# As a user,
# So that only I can use my account,
# I can log out.

feature 'As a user' do
  scenario 'I can log out' do
    visit '/'
    user_sign_up
    click_button('Log Out')
    expect(current_path).not_to have_content("Welcome Alex")
  end
end
