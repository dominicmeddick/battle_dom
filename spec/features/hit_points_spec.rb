require 'spec_helper'

feature 'See Player 2 hitpoints' do
  scenario 'player 1 can see player 2 hitpoints' do
    sign_in_and_play
    expect(page).to have_content '50HP'
  end
end
feature 'Attacking' do
  scenario 'player 1 attacks player 2 and reduces hit points' do
    sign_in_and_play
    click_link 'Attack'
    click_link 'OK'
    expect(page).not_to have_content '50HP'
    expect(page).to have_content '40HP'
  end
end