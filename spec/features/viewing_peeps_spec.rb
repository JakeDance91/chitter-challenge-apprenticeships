feature 'Viewing peeps' do
  scenario 'A user can see peeps' do
    Peeps.create(message: "This is a peep!")
    Peeps.create(message: "This is also a peep!!")

    visit('/peeps')

    expect(page).to have_content "This is a peep!"
    expect(page).to have_content "This is also a peep!!"
  end
end