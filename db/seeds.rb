# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Status.destroy_all
List.destroy_all
Review.destroy_all
Book.destroy_all
User.destroy_all

require_relative('../db/seeds/users')
require_relative('../db/seeds/statuses')
require_relative('../db/seeds/books')
require_relative('../db/seeds/reviews')
require_relative('../db/seeds/lists')