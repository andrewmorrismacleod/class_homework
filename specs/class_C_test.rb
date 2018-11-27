require('minitest/autorun')
require('minitest/rg')
require_relative('../class_C')

class TestLibrary < MiniTest::Test



    def setup
    @library_array= [
    {
      title: "lord_of_the_rings",
      rental_details: {
       student_name: "Jeff",
       date: "01/12/16"
      }
    },
    {
      title: "the_war_of_the_worlds",
      rental_details: {
       student_name: "Andrew",
       date: "01/12/17"
      }
    },
    {
      title: "the_name_of_the_rose",
      rental_details: {
       student_name: "Sarah",
       date: "01/01/18"
      }
    }

  ]
  end

  def test_get_books
    library = Library.new(@library_array)
    assert_equal("the_war_of_the_worlds", library.get_books[1][:title])
  end

  def test_get_book
    library = Library.new(@library_array)
    book_hash = {title: "the_name_of_the_rose", rental_details: {student_name: "Sarah", date: "01/01/18"}}
    assert_equal(book_hash, library.get_book("the_name_of_the_rose"))
  end


end
