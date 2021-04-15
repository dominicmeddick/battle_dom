feature 'Testing infrastructure' do
  scenario 'Can run app and check page content' do
    visit('/')
    expect(page).to have_content 'Battle!'
  end
end
 
feature 'Enter names' do
  scenario 'Players can enter their names' do
    sign_in_and_play
    expect(page).to have_content 'Player_1 vs. Player_2'
  end
end

feature 'See Player 2 hitpoints' do
  scenario 'player 1 can see player 2 hitpoints' do
    sign_in_and_play
    expect(page).to have_content '10HP'
  end
end
