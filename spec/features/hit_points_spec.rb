feature 'Hit points' do
  scenario 'see player 2 hit points' do
    sign_in_and_play
    expect(page).to have_content 'Computer: 100 hit points'
  end
end
