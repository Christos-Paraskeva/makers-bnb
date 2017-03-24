feature 'Property owners can visit their profile page' do
  scenario 'And see only their listed properties' do
    visit '/'
    user_sign_up
    click_link('List Property')
    list_a_new_property
    click_link('My Profile')
    expect(page).to have_content("Imm's Inn")
  end
end
