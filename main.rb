require './app'

def main
  books = []
  people = []
  rentals = []

  options(books, people, rentals)
end

def display_list
  puts 'Welcome to school library App!'
  puts "
  Please choose an option by entering a number:
  1 - List all books
  2 - List all people
  3 - Create a person
  4 - Create a book
  5 - Create a rental
  6 - List all rentals for a given person by id
  7 - Exit"
end

def options(books, people, rentals)
  loop do
    display_list
    option = gets.chomp.to_i
    case option
    when 1
      all_books(books)
    when 2
      all_people(people)
    when 3
      create_a_person(people)
    when 4 
      create_a_book(books)
    when 5
      create_rental(books, people, rentals)
    when 6
      all_rentals_by_id(rentals)
    else
      break
    end
  end
end

main