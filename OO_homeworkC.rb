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
  return "book not found"
  end

  def get_book_rental_info(title)
    for book in @books
      return book[:rental_details] if book[:title] == title
    end
    return "book not found"
  end

end