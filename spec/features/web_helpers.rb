
def sign_in_and_play
  visit('/')
  fill_in('Player 1 Name', with: 'Rob')
  fill_in('Player 2 Name', with: 'James')
  click_button('Submit')
end