require 'spec_helper'
 
feature 'Enter names' do
  scenario 'Players can enter their names' do
    sign_in_and_play
    expect(page).to have_content 'Player_1 vs. Player_2'
  end
end