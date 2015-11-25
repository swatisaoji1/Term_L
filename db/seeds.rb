# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Book.delete_all
Category.delete_all
Publisher.delete_all
Author.delete_all



# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

u1 = User.create(:email => "tommyboy1989@gmail.com", password: "tommy1234", name: "Thompson Reed")


b1 = Book.create(title: "Persuasion", isbn: "978-1481411257", tags: ["Best seller", "Martina Boone", "Thriller", "Romance"], description: "Skillfully blends rich magic and folklore with adventure, sweeping romance, and hidden treasure", image_path: "http://d.gr-assets.com/books/1423146561l/23450710.jpg", edition: "Hardcover Edition", price: 11.5, quantity: 1, sale_type: "Selling", user_id: u1.id)
b2 = Book.create(title: "Thank You, Jeeves", isbn: "978-1585674343", tags: ["Wodehouse", "Comedy", "Best seller", "Fiction", "Novel", "Bertie Wooster"], description: "A full cast of Wodehouse creations--including tyrannical relatives, beastly acquaintances, demon children, and literary fatheads--return for further near catastrophes and sparkling comedy Overlook is proud to present four more antic selections from comic genius, P.G. Wodehouse.", image_path: "http://ecx.images-amazon.com/images/I/51beNt3B%2BlL._SY344_BO1,204,203,200_.jpg", edition: "Paper Back Edition", price: 13.80, quantity: 3, sale_type: "Renting", user_id: u1.id)
b3 = Book.create(title: "The Diary of a Young Girl", isbn: "978-0553296983", tags: ["War", "History", "Best seller", "Classics", "Novel", "World War II"], description: "Discovered in the attic in which she spent the last years of her life, Anne Frank's remarkable diary has since become a world classic—a powerful reminder of the horrors of war and an eloquent testament to the human spirit.", image_path: "http://ecx.images-amazon.com/images/I/519HKX9M69L.jpg", edition: "Reprint edition", price: 6.75, quantity: 1, sale_type: "Selling", user_id: u1.id)
b4 = Book.create(title: "The Martian", isbn: "978-1491526514", tags: ["Best seller", "Adapted Movie", "Science", "Fiction", "Suspense", "Space"], description: "After a dust storm nearly kills Mark Watney & forces his crew to evacuate while thinking him dead, Mark finds himself stranded & completely alone on Mars", image_path: "http://d.gr-assets.com/books/1413706054l/18007564.jpg", edition: "Hardcover edition", price: 13.80, quantity: 1, sale_type: "Selling", user_id: u1.id)
b5 = Book.create(title: "Game of Thrones-5 book set", isbn: "978-0345535528", tags: ["Best seller", "TV Series Adaption", "Game Adaption", "Fantasy", "Adventure", "Game of Thrones books"], description: "All five novels in the epic fantasy series that inspired HBO’s Game of Thrones are together in one boxed set. An immersive entertainment experience unlike any other.", image_path: "http://covers.booktopia.com.au/big/9780007477159/a-game-of-thrones-the-story-continues.jpg", edition: "Paper Back edition", price: 40.30, quantity: 1, sale_type: "Selling", user_id: u1.id)
b6 = Book.create(title: "Harry Potter Book Series", isbn: "978-0545162074", tags: ["Best seller", "Movie Adaption", "Game Adaption", "Fantasy", "Adventure", "Sorcery"], description: "J.K. Rowling’s seven bestselling Harry Potter books in a stunning paperback boxed set! The Harry Potter series has been hailed as \"one for the ages\"", image_path: "http://prodimage.images-bn.com/pimages/9780545162074_p0_v2_s665x595.jpg", edition: "Paper Back edition", price: 51.80, quantity: 1, sale_type: "Selling", user_id: u1.id)
b7 = Book.create(title: "Steve Jobs", isbn: "978-1501127625", tags: ["Biography", "Movie Adaption", "Steve Jobs", "Apple owner", "Computer", "Technology", "Business"], description: "From best-selling author Walter Isaacson comes the landmark biography of Apple co-founder Steve Jobs.", image_path: "http://static01.nyt.com/images/2015/03/23/business/jobsbook3/jobsbook3-master180.jpg", edition: "Hardcover edition", price: 21.25, quantity: 5, sale_type: "Selling", user_id: u1.id)
b8 = Book.create(title: "The Girl with the Dragon Tattoo", isbn: "978-0307949486", tags: ["Best seller", "Movie Adaption", "Mystery", "Crime", "Adult", "Thriller"], description: "Mikael Blomkvist, a once-respected financial journalist, watches his professional life rapidly crumble around him. Prospects appear bleak until an unexpected (and unsettling) offer to resurrect his name is extended by an old-school titan of Swedish industry.", image_path: "http://images.barnesandnoble.com/images/66470000/66470758.JPG", edition: "Paper Back edition", price: 6.80, quantity: 1, sale_type: "Renting", user_id: u1.id)
b9 = Book.create(title: "A Suitable Boy", isbn: " 978-0060786526", tags: ["Modern Classics", "India", "love story", "Fantasy", "Vikram Seth", "Romance", "Cultural", "Contemporary"], description: "Vikram Seth's novel is, at its core, a love story: Lata and her mother, Mrs. Rupa Mehra, are both trying to find-through love or through exacting maternal appraisal-a suitable boy for Lata to marry. ", image_path: "http://d.gr-assets.com/books/1329421639l/50365.jpg", edition: "Paper Back edition", price: 3.30, quantity: 1, sale_type: "Renting", user_id: u1.id)
b10 = Book.create(title: "The Fountainhead", isbn: "978-0451191151", tags: ["Best seller", "Classics", "Ayn Rand", "Contemporary", "Philosophy", "Politics"], description: "This instant classic is the story of an intransigent young architect, his violent battle against conventional standards, and his explosive love affair with a beautiful woman who struggles to defeat him.", image_path: "http://www.valmuller.com/wp-content/uploads/2013/11/THE-FOUNTAINHEAD-by-Ayn-Rand.jpg", edition: "Paper Back edition", price: 10.99, quantity: 1, sale_type: "Renting", user_id: u1.id)


c1 = Category.create(category_name: "Romantic")
c2 = Category.create(category_name: "Suspense")
c3 = Category.create(category_name: "Comedy")
c4 = Category.create(category_name: "Fiction")
c5 = Category.create(category_name: "Historical")
c6 = Category.create(category_name: "Autobiography")
c7 = Category.create(category_name: "Non-Fiction")
c8 = Category.create(category_name: "Scientific")
c9 = Category.create(category_name: "Fantasy")
c10 = Category.create(category_name: "Adult")
c11 = Category.create(category_name: "Adventure")
c12 = Category.create(category_name: "Action")
c13 = Category.create(category_name: "Children")
c14 = Category.create(category_name: "Classics")
c15 = Category.create(category_name: "Biography")
c16 = Category.create(category_name: "Business")
c17 = Category.create(category_name: "Technology")
c18 = Category.create(category_name: "Mystery")
c19 = Category.create(category_name: "Thriller")
c20 = Category.create(category_name: "Crime")
c21 = Category.create(category_name: "Cultural")
c22 = Category.create(category_name: "Contemporary")
c23 = Category.create(category_name: "Philosophy")


p1 = Publisher.create(publisher_name: "Simon Pulse")
p2 = Publisher.create(publisher_name: "Harpercollins")
p3 = Publisher.create(publisher_name: "Bantam Publishing")
p4 = Publisher.create(publisher_name: "Podium Publishing")
p5 = Publisher.create(publisher_name: "Arthur A. Levine Books")
p6 = Publisher.create(publisher_name: "Simon & Schuster Publishing")
p7 = Publisher.create(publisher_name: "Vintage Publishing")
p8 = Publisher.create(publisher_name: "Harper Perennial Modern Classics")
p9 = Publisher.create(publisher_name: "Signet Publications")


a1 = Author.create(first_name: "Martina", last_name: "Boone")
a2 = Author.create(first_name: "P.G.", last_name: "Wodehouse")
a3 = Author.create(first_name: "Anne", last_name: "Frank")
a4 = Author.create(first_name: "Eleanor", last_name: "Roosevelt")
a5 = Author.create(first_name: "Andy", last_name: "Weir")
a6 = Author.create(first_name: "George R.R.", last_name: " Martin")
a7 = Author.create(first_name: "J.K.", last_name: "Rowling")
a8 = Author.create(first_name: "Walter", last_name: "Isaacson")
a9 = Author.create(first_name: "Stieg", last_name: "Larsson")
a10 = Author.create(first_name: "Vikram", last_name: "Seth")
a11 = Author.create(first_name: "Ayn", last_name: "Rand")

u1 = User.create(email: "tommyboy1989@gmail.com", encrypted_password: "$2a$10$fMMk1/txN9apl.X5aQep6eDtVMiHjv9RJondR2MDZBBvafmwBXRJW", reset_password_token: "", reset_password_sent_at: "", remember_created_at: "", sign_in_count: 1, name: "Thompson Reed")

b1.categories << [c1, c2]
b1.publishers << [p1]
b1.authors << [a1]

b2.categories << [c3, c4, c14]
b2.publishers << [p2]
b2.authors << [a2]

b3.categories << [c5, c6, c7]
b3.publishers << [p3]
b3.authors << [a3, a4]

b4.categories << [c8, c4, c2]
b4.publishers << [p4]
b4.authors << [a5]

b5.categories << [c2, c4, c9, c10, c11, c12]
b5.publishers << [p3]
b5.authors << [a6]

b6.categories << [c2, c3, c4, c9, c11, c12, c13, c14]
b6.publishers << [p5]
b6.authors << [a7]

b7.categories << [c5, c7, c8, c15, c16, c17]
b7.publishers << [p6]
b7.authors << [a8]

b8.categories << [c2, c4, c18, c19, c20]
b8.publishers << [p7]
b8.authors << [a9]

b9.categories << [c1, c4, c9, c21, c22]
b9.publishers << [p8]
b9.authors << [a10]

b10.categories << [c1, c4, c14, c22, c23]
b10.publishers << [p9]
b10.authors << [a11]

OrderStatus.delete_all
OrderStatus.create! id: 1, name: "In Progress"
OrderStatus.create! id: 2, name: "Placed"
OrderStatus.create! id: 3, name: "Cancelled"