def sign_in_and_play
  visit('/')
  fill_in :player_1_name, with: 'Mark'
  fill_in :player_2_name, with: 'Computer'
  click_button 'Submit'
end