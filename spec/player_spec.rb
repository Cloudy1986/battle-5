require 'player'

describe Player do
  subject(:mark) { Player.new("Mark") }

  describe '#name' do
    it "returns the player's name" do
      expect(mark.name).to eq ("Mark")
    end
  end
end

