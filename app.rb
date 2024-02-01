# frozen_string_literal: true

require_relative 'config/application'

require_relative 'router'
require_relative 'app/controllers/books_controller'

books_controller = BooksController.new

router = Router.new(books_controller)

router.run
