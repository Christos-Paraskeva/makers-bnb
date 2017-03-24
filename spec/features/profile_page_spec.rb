feature 'Property owners can visit their profile page' do
  scenario 'And see only their listed properties' do
    visit '/'
    user_sign_up
    click_link('List Property')
    list_a_new_property
    click_button('Log Out')
    second_property_owner_list_property
    click_link('My Profile')
    expect(page).to_not have_content("Imm's Inn")
    expect(page).to have_content("Chris' Pad")
  end

  scenario 'And then can return to view all properties' do
    visit '/'
    user_sign_up
    click_link('List Property')
    list_a_new_property
    click_link('My Profile')
    click_link('View Properties')
    expect(page).to have_content("Imm's Inn")
  end
end
