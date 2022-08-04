require './book'
require './student'
require './teacher'
require './rental'
require 'json'

def all_books(*)
  file = File.read('./json/books.json')
  parsed_books = JSON.parse(file)
  if parsed_books.empty?
    puts 'No books available'
  else
    parsed_books.map { |book| puts "Title: #{book['title']}, Author: #{book['author']}" }
  end
end

def all_people(*)
  file = File.read('./json/people.json')
  parsed_person = JSON.parse(file)
  if parsed_person.empty?
    puts 'No person created'
  else
    # people.each { |person| puts "[#{person.class}] Name: #{person.name}, ID: #{person.id}, Age: #{person.age}" }
    parsed_person.map { |person| puts "Name: #{person['name']}, ID: #{person['id']}, Age: #{person['age']}" }
  end
end

def all_rentals_by_id(*)
  print 'ID of person: '
  file = File.read('./json/rentals.json')
  parsed_rental = JSON.parse(file)
  selected_person = gets.chomp.to_i
  if parsed_rental.empty?
    puts 'NO rentals available'
  elsif parsed_rental.any? { |rental| rental['id'] == selected_person }
    parsed_rental.each do |rental|
      if rental['id'] == selected_person
        puts 'Rental details for selected person'
        puts "Date: #{rental['date']}, Book: '#{rental['title']}' by #{rental['author']} \n\n"
      end
    end
  end
end
