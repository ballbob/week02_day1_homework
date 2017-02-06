class Library
attr_accessor :book
  def initialize(book)
    @book = book
  end

  def list_all_books
      return @book
  end

end