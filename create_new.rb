require './book'
require './student'
require './teacher'
require './rental'
require 'json'

def create_a_book(books)
  print 'Title: '
  title = gets.chomp
  print 'Author: '
  author = gets.chomp
  books.push(Book.new(title, author))
  file = File.read('./json/books.json')
  stored_books = JSON.parse(file)
  stored_books.push(title: books.last.title, author: books.last.author)
  File.open('./json/books.json', 'w') { |f| f.puts JSON.pretty_generate(stored_books) }
  puts 'Book created successfully'
end

def create_a_person(people)
  print 'Do you want to create a student (1) or a teacher (2): '
  selected_person = gets.chomp.to_i
  print 'Age: '
  age = gets.chomp.to_i
  print 'Name: '
  name = gets.chomp

  case selected_person
  when 1
    print 'Do you have parent permission? [Y/N]: '
    provided_response = gets.chomp.capitalize
    student_permission = true if provided_response == 'Y'
    student_permission = false if provided_response == 'N'
    people.push(Student.new(nil, age, name, parent_permission: student_permission))
    file = File.read('./json/people.json')
    stored_people = JSON.parse(file)
    stored_people.push(name: name, age: age, parent_permission: student_permission, id: people.last.id)
    File.open('./json/people.json', 'w') { |f| f.puts JSON.pretty_generate(stored_people) }
  when 2
    print 'Specialization: '
    specialization = gets.chomp
    people.push(Teacher.new(specialization, age, name))
    file = File.read('./json/people.json')
    stored_people = JSON.parse(file)
    stored_people.push(name: name, age: age, specialization: specialization, id: people.last.id)
    File.open('./json/people.json', 'w') { |f| f.puts JSON.pretty_generate(stored_people) }
  end
  puts 'Person created successfully.'
end

def create_rental(_rentals, _books, _people)
  puts 'Select a book from the following list by number:'
  file = File.read('./json/books.json')
  parsed_book = JSON.parse(file)
  parsed_book.map.with_index { |book, index| puts "#{index} Title: '#{book['title']}', Author: #{book['author']}" }
  selected_book = gets.chomp.to_i

  puts 'Select a person from the following list by number (Not ID): '
  file = File.read('./json/people.json')
  parsed_person = JSON.parse(file)
  parsed_person.map.with_index do |person, index|
    puts "#{index} Name: '#{person['name']}', ID: #{person['id']}, Age: #{person['age']}"
  end

  selected_person = gets.chomp.to_i

  print 'Date: '
  provided_date = gets.chomp
  new_book = parsed_book[selected_book]
  new_person = parsed_person[selected_person]
  file = File.read('./json/rentals.json')
  stored_rentals = JSON.parse(file)
  stored_rentals.push({ date: provided_date }.merge(new_person, new_book))
  File.open('./json/rentals.json', 'w') { |f| f.puts JSON.pretty_generate(stored_rentals) }
  puts 'Rental created successfully'
end
