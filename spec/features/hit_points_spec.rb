require 'spec_helper'

feature 'See Player 2 hitpoints' do
  scenario 'player 1 can see player 2 hitpoints' do
    sign_in_and_play
    expect(page).to have_content '50HP'
  end
end