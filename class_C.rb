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

end
