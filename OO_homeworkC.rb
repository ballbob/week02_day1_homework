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
      return book if book[:title] == title end
  return "book not found"
  end

  def get_book_rental_info(title)
    for book in @books
      return book[:rental_details] if book[:title] == title
    end
    return "book not found"
  end

  def add_new_book(addition)
    @books.push(addition)
  end

  def change_rental_details(title,student,date)
    for book in @books
      if book[:title] == title
        book[:rental_details][:student_name] = student
        book[:rental_details][:date] = date
      end
    end
      return "book not found"
  end

end