# As Player 1,
# So I can see how close I am to winning
# I want to see Player 2's Hit Points

feature 'Display Player 2 hit points' do
  scenario 'displaying P2 HP' do
    sign_in_and_play
    expect(page).to have_content 'Goliath: 77HP'
  end
end
