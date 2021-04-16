require 'player'

describe Player do
  subject(:rebecca) { Player.new('Rebecca')}

  describe '#name' do
    it 'returns a name' do
      expect(rebecca.name).to eq 'Rebecca'
    end
  end

end