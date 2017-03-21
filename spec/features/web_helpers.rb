def user_sign_up
    click_link 'Sign up'
    fill_in 'name', with: 'Alex'
    fill_in 'email', with: 'aleximm@immsinns.com'
    fill_in 'password', with: 'secret123'
    click_button "Submit"
end

def list_a_new_property
  fill_in :title, with: "Imm's Inn"
  fill_in :description, with: "Very Nice"
  fill_in :price_per_night, with: "50"
  fill_in :location, with: "London"
  fill_in :available, with: "March"
  click_button "Submit" 
end
