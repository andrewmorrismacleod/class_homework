class Library

  def initialize(books)
    @books = books
  end

  def get_books
    return @books
  end

  def get_book(title)
    return @books.select{ |book| book[:title] == title}[0]
  end

  def get_book_rental(title)
    return @books.select{ |book| book[:title] == title}[0][:rental_details]
  end

end
