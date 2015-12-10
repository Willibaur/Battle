# As a Player,
# So I can Lose a game of Battle,
# I want to see a 'Lose' message if I reach 0HP first
feature 'the game ends' do
  scenario 'player 2 reaches 0 points' do
    sign_in_and_play
    11.times do
      click_button 'Attack'
      click_link 'Back to Play'
    end
    expect(page).to have_content 'Goliath loses'
  end
end
