require './book'
require './student'
require './teacher'
require './rental'

def all_books(books)
  if books.empty?
    puts 'No books available'
  else
    books.each { |_book| puts "Title: #{title}, Author: #{author}" }
  end
end

def all_people(people)
  if people.empty?
    puts 'No person created'
  else
    people.each { |person| puts "[#{person.class}] Name: #{person.name}, ID: #{person.id}, Age: #{person.age}" }
  end
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
  when 2
    print 'Specialization: '
    specialization = gets.chomp
    people.push(Teacher.new(specialization, age, name))
  end
  puts 'Person created successfully.'
end

def create_a_book(books)
  print 'Title: '
  title = gets.chomp
  print 'Author: '
  author = gets.chomp
  books.push(Book.new(title, author))
  puts 'Book created successfully'
end

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
  person_id = gets.chomp.to_i
  rentals.map do |rental|
    puts "Date: #{rental.date}, Book: #{rental.book.title} by #{rental.book.author}" if rental.person.id == person_id
  end
end
