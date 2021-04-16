require 'spec_helper'

feature 'Confirmation of attack' do
  scenario 'Player 1 attacks Player 2' do
    sign_in_and_play
    click_link 'Attack'
    expect(page).to have_content 'Player_1 attacked Player_2'
  end
end
