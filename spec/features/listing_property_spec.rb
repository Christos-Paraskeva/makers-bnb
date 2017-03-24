feature 'As a user' do
  scenario 'I can list a property' do
    visit '/'
    user_sign_up
    click_link('List a New Property')
    expect(current_path).to eq '/property/new'
    list_a_new_property
    expect(page).to have_content("Imm's Inn")
  end


  scenario 'I can list a property with an image' do
    visit '/'
    user_sign_up
    click_link('List a New Property')
    expect(current_path).to eq '/property/new'
    list_a_new_property
    expect(page).to have_xpath("//img[@src='http://www.bigpicturebigsound.com/artman2/uploads/1/star-wars-home-theater.jpg']")
  end
end
