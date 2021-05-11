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

feature 'Attack player 2' do
  scenario 'Attack player 2 and display confirmation' do
    sign_in_and_play
    click_button('Attack')
    expect(page).to have_content('Rob vs James')
    expect(page).to have_content('You attacked Player 2')
  end
end

feature 'Decrease hit points' do
  scenario 'Attack reduces Player 2 hit points by 10' do
    pending('adding hp to player class')
    sign_in_and_play
    click_button('Attack')
    expect(page).to have_content('Player 2 Hit Points: 90')
  end
end
