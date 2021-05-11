feature 'Two players'  do
  scenario 'Two players can enter their names and see them on screen' do
    sign_in_and_play
    expect(page).to have_content('Rob vs James')
  end
end

feature 'Hit points' do
  scenario 'Display player 2 hit points' do
    sign_in_and_play
    expect(page).to have_content('Player 2 Hit Points: 100')
  end
end
