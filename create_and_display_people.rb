require './student'
require './teacher'

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

def all_people(people)
  if people.empty?
    puts 'No person created'
  else
    people.each { |person| puts "[#{person.class}] Name: #{person.name}, ID: #{person.id}, Age: #{person.age}" }
  end
end
