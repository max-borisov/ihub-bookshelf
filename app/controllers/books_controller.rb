class BooksController < ApplicationController
  # List books
  def index
    @books = Book.order(created_at: :asc).all
  end
end
