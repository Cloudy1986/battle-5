require 'player'

describe Player do
  subject(:mark) { Player.new("Mark") }
  subject(:computer) { Player.new("Computer") }

  describe '#name' do
    it "returns the player's name" do
      expect(mark.name).to eq ("Mark")
    end
  end

  describe '#hit_points' do
    it 'returns hit points' do
      expect(mark.hit_points).to eq described_class::DEFAULT_HIT_POINTS
    end
  end

  describe '#attack' do
    it 'damages the player' do
      expect(computer).to receive(:receive_damage)
      mark.attack(computer)
    end
  end

  describe '#receive_damage' do
    it 'reduces the player hit points' do
      expect { computer.receive_damage }.to change { computer.hit_points }.by(-10)
    end
  end
end
