# frozen_string_literal: true

require_relative '../views/books_view'

class BooksController
  def initialize
    @view = BooksView.new
  end

  def list
    # Fetch ALL the books from Active Record
    # Display all books in View
    books = Book.all
    @view.display(books)
  end

  def add
    # Ask for title => View
    # Ask for price
    # Ask for author
    # Ask for category
    title = @view.ask_for('title')
    price = @view.ask_for('Price').to_i
    author = @view.ask_for('author')
    category = @view.ask_for('category')

    # Active Record
    # Create a new book
    book = Book.new(title:, price:, author:, category:)
    # Save a new book
    book.save
  end

  def edit
    # Fetch ALL the books from Active Record
    # Display all books
    Books.all
    @view.display.all
    # Ask for which book by ID
    @view.ask_for('ID').to_id
    # Find the book
    book = Book.find(id)
    # Ask for title => View
    # Ask for price
    # Ask for author
    # Ask for category
    new_title = @view.ask_for('title')
    new_price = @view.ask_for('Price').to_i
    new_author = @view.ask_for('author')
    new_category = @view.ask_for('category')
    # Edit the data
    book.title = new_title
    book.price = new_price
    book.author = new_author
    book.category = new_category
    # Save the new book with new data
    book.save
  end

  def delete
    # Fetch ALL the books from Active Record
    # Display all books

    books = Book.all
    @view.display(books)
    # Ask for which book by ID
    id = @view.ask_for('ID').to_i

    # Find the book
    book = Book.find(id)
    # Destroy the book
    book.destroy
  end

  def mark_as_rent
    # Fetch ALL the books from Active Record
    # Display all books
    id = @view.ask_user_for('ID').to_i
    book = Book.find(id)
    # Ask for which book by ID
    book.rent = !book.rent
    book.save
    # Find the book
    # Mark as rent
    # Save
  end
end
