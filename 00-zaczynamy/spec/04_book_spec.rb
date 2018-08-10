require '04_book'

RSpec.describe 'Effective Testing with RSpec 3 book' do
  let(:rspec_book) { Book.new('bestseller', ['programming'], 100) }

  it 'costs €100' do
    cost = rspec_book.cost
    expect(cost).to eq(100)
  end

  context 'with ebook' do
    before { rspec_book.with_epub = true }

    it 'costs €120' do
      expect(rspec_book.cost).to eq(120)
    end
  end
end
