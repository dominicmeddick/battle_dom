require 'player'
require 'spec_helper'

describe Player do
  subject(:rebecca) { Player.new('Rebecca')}
  subject(:kerri) {Player.new('Kerri')}

  describe '#name' do
    it 'returns a name' do
      expect(rebecca.name).to eq 'Rebecca'
    end
  end

  describe '#hitpoints' do
    it 'stores hitpoints of player' do
      expect(rebecca.hitpoints).to eq Player::HIT_POINTS
    end
  end

  describe '#receive_damage' do
    it 'reduces hitpoints by 10' do
      expect { rebecca.receive_damage }.to change { rebecca.hitpoints }.by(-10)
    end
  end
end