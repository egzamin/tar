class Book
  attr_accessor :price, :with_epub

  def initialize(description, categories, price)
    @description = description
    @categories = categories
    @price = price
    @with_epub = false
  end

  def cost
    with_epub ? 1.2 * price : price
  end
end
