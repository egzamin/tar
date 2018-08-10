require_relative '../lib/world.rb'
require_relative '../lib/cell.rb'

RSpec.describe World do
  let(:world) { described_class.new }

  describe '.new' do
    it 'is empty' do
      expect(world.living_cells.count).to eq(0)
    end
  end

  describe '#living_cells' do
    it 'can add cell to the world' do
      world.set_living_at(1, 1)
      expect(world.living_cells.count).to eq(1)
    end
  end
end

RSpec.describe World, '– test names should influence object’s API' do
  let(:world) { described_class.new }

  describe '.new' do
    it 'is empty' do
      expect(world.empty?).to eq(true)
    end
  end

  describe '#living_cells' do
    it 'can add cell to the world' do
      world.set_living_at(1, 1)
      expect(world.alive_at?(1, 1)).to eq(true)
    end

    it 'the world with a living cell is not empty' do
      world.set_living_at(1, 1)
      expect(world.empty?).to eq(false)
    end
  end
end
