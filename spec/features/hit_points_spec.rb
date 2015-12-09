# As Player 1,
# So I can see how close I am to winning
# I want to see Player 2's Hit Points

feature 'Display Player 2 hit points' do
  scenario 'displaying P2 HP' do
    visit('/')
    fill_in(:player_1_name, with: 'Dave')
    fill_in(:player_2_name, with: 'Goliath')
    click_button 'Submit'
    expect(page).to have_content 'Goliath: 77HP'
  end
end
