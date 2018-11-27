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

  def add_new_book(title)
    @books.push({title: title, rental_details: {student_name: "", date: ""}})
  end

  def update_rental_details(title, name, date)
    books_index = @books.index { |book| book[:title] = title}[0]
    @books[0][:rental_details][:student_name] = name
    @books[0][:rental_details][:date] = date

  end

end
