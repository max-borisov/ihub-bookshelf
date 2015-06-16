class BooksController < ApplicationController
  # List books
  def index
    @books = Book.order(created_at: :asc).all
  end

  # Show book
  def show
    @book = Book.find(params[:id])
    @reviews = @book.reviews
  end
end
