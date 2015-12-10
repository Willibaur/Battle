
feature 'Attacking' do
# As Player 1,
# So I can win a game of Battle,
# I want to attack Player 2, and I want to get a confirmation
  scenario 'attack player 2' do
    sign_in_and_play
    click_button 'Attack'
    expect(page).to have_content 'Dave attacked Goliath'
  end


# # As Player 1,
# # So I can start to win a game of Battle,
# # I want my attack to reduce Player 2's HP
#   scenario 'reduce HP Player2' do
#     sign_in_and_play
#     click_button 'Attack'
#     expect()
#   end
end