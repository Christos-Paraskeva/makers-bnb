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
  fill_in :available_from, with: "05-01-2017"
  fill_in :available_to, with: "09-02-2017"
  fill_in :image_url, with: "http://www.bigpicturebigsound.com/artman2/uploads/1/star-wars-home-theater.jpg"
  click_button "Submit"
end

def second_property_owner_list_property
  visit '/'
  click_link 'Sign up'
  fill_in 'name', with: 'Chris'
  fill_in 'email', with: 'chris@chris.com'
  fill_in 'password', with: 'secret321'
  click_button 'Submit'
  click_link 'List Property'
  fill_in :title, with: "Chris' Pad"
  fill_in :description, with: "Awesome"
  fill_in :price_per_night, with: "50"
  fill_in :location, with: "London"
  fill_in :available_from, with: "22-01-2017"
  fill_in :available_to, with: "23-02-2017"
  fill_in :image_url, with: "https://s-media-cache-ak0.pinimg.com/736x/73/de/32/73de32f9e5a0db66ec7805bb7cb3f807.jpg"
  click_button "Submit"
end
