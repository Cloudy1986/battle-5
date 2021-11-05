feature 'Attack' do
  scenario 'attack player 2 and get confirmation' do
    sign_in_and_play
    click_button 'Attack'
    expect(page).to have_content 'Mark has attacked Computer'
  end

  scenario 'reduce player 2 hit points by 10' do
    sign_in_and_play
    click_button 'Attack'
    click_button 'OK'
    expect(page).not_to have_content 'Computer: 100 hit points'
    expect(page).to have_content 'Computer: 90 hit points'
  end
end
