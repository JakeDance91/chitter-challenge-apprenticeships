feature 'Viewing welcome page' do
  scenario 'visiting / page' do
    visit('/')
    expect(page).to have_content "Welcome to Chitter!"
  end
end
