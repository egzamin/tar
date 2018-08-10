class Rainbow
  attr_reader :colors
  def initialize
    @colors = %w( red orange yellow green blue indigo violet )
  end
end

RSpec.describe Rainbow, '#colors' do
  specify do
    expect(Rainbow.new.colors).to include('orange', 'indigo')
  end
  specify do
    expect(Rainbow.new.colors).not_to include('brown')
  end
end

RSpec.describe Rainbow, '#colors' do
  subject { Rainbow.new.colors }

  it { is_expected.to include('orange', 'indigo') }
  it { is_expected.not_to include('brown') }
end
