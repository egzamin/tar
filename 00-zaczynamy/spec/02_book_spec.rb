require '01_book'

RSpec.describe 'A book' do
  it 'bestseller' do
    book = Book.new('bestseller', [])
    description = book.description

    expect(description).to eq('bestseller')
  end

  it 'add some categories' do
    book = Book.new('bestseller', [])
    book.categories << 'framework'
    categories = book.categories

    expect(categories).not_to be_empty
  end
end
