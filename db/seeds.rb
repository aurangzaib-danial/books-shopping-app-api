book_description = <<-TEXT
  Lorem ipsum dolor sit amet, consectetur adipisicing elit. Cupiditate animi assumenda, quis earum expedita quidem nobis nostrum atque dolorem quo enim quia sed suscipit corrupti saepe nisi fugit? Sed, inventore.
  Lorem ipsum, dolor sit amet consectetur adipisicing elit. Eum sunt voluptates dolores ut veniam sed aliquam delectus et quidem commodi ad praesentium eligendi a pariatur repellat sequi, minima unde expedita.
TEXT

50.times do |i|
  genre = Genre.find_or_create_by!(name: Faker::Book.genre)
  book = Book.create!(
    title: Faker::Book.unique.title, 
    author: Faker::Book.author,
    genre: genre,
    description: book_description,
    price: 9.99 + i
    )
end

User.create! email: 'aurangzaib.danial@gmail.com', password: '123456'
