require './book'
require './student'
require './teacher'
require './rental'

def all_books(books)
  if books.empty?
    puts 'No books available'
  else
    books.each { |book| puts "Title: #{book.title}, Author: #{book.author}" }
  end
end

def all_people(people)
  if people.empty?
    puts 'No person created'
  else
    people.each { |person| puts "[#{person.class}] Name: #{person.name}, ID: #{person.id}, Age: #{person.age}" }
  end
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