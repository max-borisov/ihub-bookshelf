users = User.all.pluck(:id)
statuses = Status.all.pluck(:id)
users.each do |user_id|
  books = Book.all.limit(4).pluck(:id)
  books.each do |book_id|
    List.create!([
                   {
                     user_id: user_id,
                     book_id: book_id,
                     status_id: statuses.sample
                   }
    ])
  end
end
puts("#{List.count} list(s) have been created.")
