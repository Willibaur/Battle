# As Player 1,
# So I can see how close I am to winning
# I want to see Player 2's Hit Points

feature 'Display Player 2 hit points' do
  scenario 'displaying P2 HP' do
    sign_in_and_play
    expect(page).to have_content 'Goliath: 60HP'
  end

  # As Player 1,
  # So I can see how close I am to losing,
  # I want to see my own hit points
  scenario 'displays actual player hit points' do
    sign_in_and_play
    expect(page).to have_content 'David: 60HP'
  end
  
end
