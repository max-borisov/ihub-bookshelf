class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable, :rememberable, :validatable
  has_many :reviews, dependent: :destroy
  has_many :lists
  has_many :books, through: :lists
  validates :name, presence: true
end
