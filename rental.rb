# a rental belongs-to a book and a person

class Rental
  attr_accessor :date, :book, :person

  def initialize(date, person, book)
    @date = date
    @book = book
    book.rentals << self
    @person = person
    person.rentals << self
  end
end
