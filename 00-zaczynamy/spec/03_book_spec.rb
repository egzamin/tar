require '01_book'

RSpec.describe 'A book' do
  let(:book) { Book.new('bestseller', []) }

  it 'bestseller' do
    description = book.description
    expect(description).to eq('bestseller')
  end

  it 'add some categories' do
    book.categories << 'framework'
    categories = book.categories
    expect(categories).not_to be_empty
  end
end
