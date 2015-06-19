class ShoppingCartItemsController < ApplicationController
  def create
    @cart_item = current_user.shopping_cart_items.build(book_id: params[:book_id])
    book_title = Book.find(params[:book_id]).title
    if @cart_item.save
      redirect_to root_url, notice: "\"#{book_title}\" book has been added to your shopping cart"
    else
      redirect_to root_url, danger: "\"#{book_title}\" could not be added to your shopping cart. Please, try again."
    end
  end
end
