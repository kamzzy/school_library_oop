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

main
