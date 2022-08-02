require './book'

def create_a_book(books)
  print 'Title: '
  title = gets.chomp
  print 'Author: '
  author = gets.chomp
  books.push(Book.new(title, author))
  puts 'Book created successfully'
end

def all_books(books)
  if books.empty?
    puts 'No books available'
  else
    books.each { |book| puts "Title: #{book.title}, Author: #{book.author}" }
  end
end
