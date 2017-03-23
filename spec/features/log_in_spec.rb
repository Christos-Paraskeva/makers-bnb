# As a user,
# So that only I can use my account,
# I can log in with my email address and password.

feature 'Logging in' do

  scenario 'user can log in' do
    visit '/'
    click_link 'Sign up'
    fill_in 'name', with: 'Alex'
    fill_in 'email', with: 'aleximm@immsinns.com'
    fill_in 'password', with: 'secret123'
    click_button "Submit"
    visit '/'
    fill_in 'email', with: 'aleximm@immsinns.com'
    fill_in 'password', with: 'secret123'
    click_button 'Log in'
    expect(page).to have_content "Welcome Alex"
  end

  scenario 'user must enter an existing email address' do
    visit '/'
    fill_in 'email', with: 'alex@immsinns.com'
    fill_in 'password', with: 'secret123'
    click_button "Log in"
    expect(page).to have_content "Your username or password is incorrect!"
  end

  scenario 'user must submit a correct password' do
    visit '/'
    click_link 'Sign up'
    fill_in 'name', with: 'Alex'
    fill_in 'email', with: 'aleximm@immsinns.com'
    fill_in 'password', with: 'secret123'
    click_button "Submit"
    visit '/'
    fill_in 'email', with: 'aleximm@immsinns.com'
    fill_in 'password', with: 'secret12'
    click_button "Log in"
    expect(page).to have_content "Your username or password is incorrect!"
  end
end
