require './book'
require './student'
require './teacher'
require './rental'

def create_rental(books, people, rentals)
  puts 'Select a book from the following list by number:'
  books.map.with_index { |book, index| puts "#{index} Title: '#{book.title}', Author: #{book.author}" }
  selected_book = gets.chomp.to_i

  puts 'Select a person from the following list by number (Not ID): '
  people.map.with_index do |person, index|
    puts "#{index} [#{person.class}] Name: #{person.name}, ID: #{person.id}, Age: #{person.age}"
  end
  selected_person = gets.chomp.to_i

  print 'Date: '
  provided_date = gets.chomp

  rentals.push(Rental.new(provided_date, people[selected_person], books[selected_book]))
  puts 'Rental created successfully'
end

def all_rentals_by_id(rentals)
  print 'ID of person: '
  selected_person = gets.chomp.to_i
  rentals.map do |rental|
    if rental.person.id == selected_person
      puts "Date: #{rental.date}, Book: '#{rental.book.title}' by #{rental.book.author}"
    end
  end
end
