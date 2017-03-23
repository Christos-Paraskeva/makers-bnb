feature 'As a user' do
  scenario 'I can list a property' do
    visit '/'
    user_sign_up
    click_button('List Property')
    expect(current_path).to eq '/property/new'
    list_a_new_property
    expect(page).to have_content("Imm's Inn")
  end


  scenario 'I can list a property with an image' do
    visit '/'
    user_sign_up
    click_button('List Property')
    expect(current_path).to eq '/property/new'
    fill_in :title, with: "Imm's Inn"
    fill_in :description, with: "Very Nice"
    fill_in :price_per_night, with: "50"
    fill_in :location, with: "London"
    fill_in :available_from, with: "05-01-2017"
    fill_in :available_to, with: "09-02-2017"
    fill_in :image_url, with: "http://www.bigpicturebigsound.com/artman2/uploads/1/star-wars-home-theater.jpg"
    click_button "Submit"
    expect(page).to have_xpath("//img[@src='http://www.bigpicturebigsound.com/artman2/uploads/1/star-wars-home-theater.jpg']")
  end
end
