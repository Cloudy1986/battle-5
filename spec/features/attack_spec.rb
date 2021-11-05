feature 'Attack' do
  scenario 'attack player 2 and get confirmation' do
    sign_in_and_play
    expect(page).to have_content 'Mark has attacked Computer'
  end
end