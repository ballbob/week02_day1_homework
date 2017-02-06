class Library
attr_accessor :book
  def initialize(books)
    @books = books
  end

  def list_all_books
      return @books
  end

  def get_book_info(title)
   for book in @books
    return book if book[:title] == title
  end
  end
end