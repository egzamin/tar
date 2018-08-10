require '00_book'

RSpec.describe 'A book' do
  it 'bestseller' do
    book = Book.new('bestseller', [])
    description = book.description

    expect(description).to eq('bestseller')
  end
end
