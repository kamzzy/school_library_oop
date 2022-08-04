require 'json'
module Storage
  def book_storage
    books = []
    books = JSON.parse(File.read('./jsonFiles/books.json')) if File.exist?('./jsonFiles/books.json')
    books
  end

  def people_storage
    people = []
    people = JSON.parse(File.read('./jsonFiles/people.json')) if File.exist?('./jsonFiles/people.json')
    people
  end

  def rental_storage
    rentals = []
    rentals = JSON.parse(File.read('./jsonFiles/rentals.json')) if File.exist?('./jsonFiles/rentals.json')
    rentals
  end
end
