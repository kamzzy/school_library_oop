require_relative '../rental'
require_relative '../person'
describe Rental do
  context 'When renting a book' do
    book = Book.new('title', 'author')
    person = Person.new(25,'unknown', parent_permission: true)
    rental = Rental.new('20/11/2020', person, book)
    it 'should create a new rental with the given parameters' do
      expect(rental).to be_an_instance_of Rental
    end
    it 'should create rental for book' do
      expect(book.rentals).to include(rental)
    end
    it 'should create rental for person' do
      expect(person.rentals).to include(rental)
    end
  end
end