# frozen_string_literal: true

class BooksView
  def display(books)
    books.each do |book|
      status = book.rent ? 'Unavailable' : 'Available'
      puts "\nID:#{book.id} - TITLE: #{book.title}"
      puts "#{status} #{book.id} =#{book.title}"
    end
  end

  def ask_user_for(thing)
    puts "what is #{thing}?"
    gets.chomp
  end
end
