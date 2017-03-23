feature 'As a user' do
  scenario 'I can list a property' do
    visit '/'
    user_sign_up
    click_link('List Property')
    expect(current_path).to eq '/property/new'
    list_a_new_property
    expect(page).to have_content("Imm's Inn")
  end
end
