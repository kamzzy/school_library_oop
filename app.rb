require './create_and_display_people'
require './create_and_display_books'
require './create_and_display_rentals'

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
