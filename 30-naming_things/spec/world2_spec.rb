require_relative '../lib/world2'
require_relative '../lib/location'

RSpec.describe World2, '– duplication of knowledge about topology' do
  let(:world) { described_class.new }

  describe '.new' do
    it 'is empty' do
      expect(world.living_cells.count).to eq(0)
    end
  end

  describe '#living_cells' do
    it 'can add cell to the world' do
      world.add_living_at(Location.new(1, 1))
      expect(world.living_cells.count).to eq(1)
    end
  end
end

RSpec.describe World2, '– test names should influence object’s API' do
  let(:world) { described_class.new }

  describe '.new' do
    it 'is empty' do
      expect(world.empty?).to eq(true)
    end
  end

  describe '#living_cells' do
    it 'can add cell to the world' do
      location = Location.new(1, 1)
      world.add_living_at(location)

      expect(world.alive_at?(location)).to eq(true)
    end

    it 'the world with a living cell is not empty' do
      location = Location.new(1, 1)
      world.add_living_at(location)

      expect(world.empty?).to eq(false)
    end

    it '(mocking location) the world with a living cell is not empty' do
      location = double('location')
      world.add_living_at(location)
      expect(world.empty?).to eq(false)
    end
  end
end
