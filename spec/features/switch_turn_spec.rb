# As two Players,
# So we can continue our game of Battle,
# We want to switch turns
feature 'switch turns' do
  scenario 'it is player twos turn' do
    sign_in_and_play
    click_button 'Attack'
    click_link 'Back to Play'
    expect(page).to have_content "Goliath's turn"
  end
end
