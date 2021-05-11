feature 'Two players'  do
  scenario 'Two players can enter their names and see them on screen' do
    visit('/')
    fill_in('Player 1 Name', with: 'Rob')
    fill_in('Player 2 Name', with: 'James')
    click_button('Submit')
    expect(page).to have_content('Rob vs James')
  end
end

feature 'Hit points' do
  scenario 'Display player 2 hit points' do
    visit('/')
    fill_in('Player 1 Name', with: 'Rob')
    fill_in('Player 2 Name', with: 'James')
    click_button('Submit')
    expect(page).to have_content('Player 2 Hit Points: 100')
  end
end
