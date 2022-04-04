feature 'Adding a peep' do
  scenario 'A user can add a peep to chitter' do
    visit('/peeps/new')
    fill_in('message', with: 'This is my third peep!!!')
    click_button('Peep!')

    expect(page).to have_content 'This is my third peep!!!'
  end
end