describe Game do
  let(:player_1_name) { double :player }
  let(:player_2_name) { double :player}

  describe '#attack' do
    it 'damages the player' do
      expect(player_2_name).to receive(:receive_damage)
      subject.attack(player_2_name)
    end
  end
end