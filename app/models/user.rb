class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable, :rememberable, :validatable
  has_many :reviews, dependent: :destroy
  has_many :shopping_cart_items, dependent: :destroy
  has_many :books, through: :shopping_cart_items
  validates :name, presence: true

  def has_in_shopping_cart?(book)
    shopping_cart_items.where(book_id: book).exists?
  end

  def shopping_cart_total_price
    books.pluck(:price).sum
  end
end
