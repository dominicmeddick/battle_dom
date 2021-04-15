def sign_in_and_play
  visit('/')
    fill_in :player_1_name, with: 'Player_1'
    fill_in :player_2_name, with: 'Player_2'
    click_button 'Enter players'
end