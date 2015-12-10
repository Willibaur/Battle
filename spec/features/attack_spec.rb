
feature 'Attacking' do
# As Player 1,
# So I can win a game of Battle,
# I want to attack Player 2, and I want to get a confirmation
  scenario 'attack player 2' do
    sign_in_and_play
    click_button 'Attack'
    expect(page).to have_content 'David attacked'
  end


# # As Player 1,
# # So I can start to win a game of Battle,
# # I want my attack to reduce Player 2's HP
  scenario 'reduce Player 2 HP by 10' do
    sign_in_and_play
    click_button "Attack"
    # click_link 'OK'
    expect(page).not_to have_content 'Goliath: 60HP'
    expect(page).to have_content 'Goliath: 50HP'
  end

# As Player 1,
# So I can start to lose a game of Battle,
# I want Player 2's attack to reduce my HP
  scenario 'reduce player 1 HP' do
    sign_in_and_play
    click_button 'Attack'
    
  end
end
