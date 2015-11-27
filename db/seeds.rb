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

u1 = User.create(:email => "tommyboy1989@gmail.com", password: "tommy1234", name: "Thompson Reed")


b1 = Book.create(title: "Persuasion", isbn: "978-1481411257", description: "Skillfully blends rich magic and folklore with adventure, sweeping romance, and hidden treasure", image_path: "http://d.gr-assets.com/books/1423146561l/23450710.jpg", edition: "Hardcover Edition", price: 11.5, quantity: 1, sale_type: "Selling", user_id: u1.id)
b2 = Book.create(title: "Thank You, Jeeves", isbn: "978-1585674343", description: "A full cast of Wodehouse creations--including tyrannical relatives, beastly acquaintances, demon children, and literary fatheads--return for further near catastrophes and sparkling comedy Overlook is proud to present four more antic selections from comic genius, P.G. Wodehouse.", image_path: "http://ecx.images-amazon.com/images/I/51beNt3B%2BlL._SY344_BO1,204,203,200_.jpg", edition: "Paper Back Edition", price: 13.80, quantity: 3, sale_type: "Renting", user_id: u1.id)
b3 = Book.create(title: "The Diary of a Young Girl", isbn: "978-0553296983", description: "Discovered in the attic in which she spent the last years of her life, Anne Frank's remarkable diary has since become a world classic—a powerful reminder of the horrors of war and an eloquent testament to the human spirit.", image_path: "http://ecx.images-amazon.com/images/I/519HKX9M69L.jpg", edition: "Reprint edition", price: 6.75, quantity: 1, sale_type: "Selling", user_id: u1.id)
b4 = Book.create(title: "The Martian", isbn: "978-1491526514", description: "After a dust storm nearly kills Mark Watney & forces his crew to evacuate while thinking him dead, Mark finds himself stranded & completely alone on Mars", image_path: "http://d.gr-assets.com/books/1413706054l/18007564.jpg", edition: "Hardcover edition", price: 13.80, quantity: 1, sale_type: "Selling", user_id: u1.id)
b5 = Book.create(title: "Game of Thrones-5 book set", isbn: "978-0345535528", description: "All five novels in the epic fantasy series that inspired HBO’s Game of Thrones are together in one boxed set. An immersive entertainment experience unlike any other.", image_path: "http://covers.booktopia.com.au/big/9780007477159/a-game-of-thrones-the-story-continues.jpg", edition: "Paper Back edition", price: 40.30, quantity: 1, sale_type: "Selling", user_id: u1.id)
b6 = Book.create(title: "Harry Potter Book Series", isbn: "978-0545162074", description: "J.K. Rowling’s seven bestselling Harry Potter books in a stunning paperback boxed set! The Harry Potter series has been hailed as \"one for the ages\"", image_path: "http://prodimage.images-bn.com/pimages/9780545162074_p0_v2_s665x595.jpg", edition: "Paper Back edition", price: 51.80, quantity: 1, sale_type: "Selling", user_id: u1.id)
b7 = Book.create(title: "Steve Jobs", isbn: "978-1501127625", description: "From best-selling author Walter Isaacson comes the landmark biography of Apple co-founder Steve Jobs.", image_path: "http://static01.nyt.com/images/2015/03/23/business/jobsbook3/jobsbook3-master180.jpg", edition: "Hardcover edition", price: 21.25, quantity: 5, sale_type: "Selling", user_id: u1.id)
b8 = Book.create(title: "The Girl with the Dragon Tattoo", isbn: "978-0307949486", description: "Mikael Blomkvist, a once-respected financial journalist, watches his professional life rapidly crumble around him. Prospects appear bleak until an unexpected (and unsettling) offer to resurrect his name is extended by an old-school titan of Swedish industry.", image_path: "http://images.barnesandnoble.com/images/66470000/66470758.JPG", edition: "Paper Back edition", price: 6.80, quantity: 1, sale_type: "Renting", user_id: u1.id)
b9 = Book.create(title: "A Suitable Boy", isbn: " 978-0060786526", description: "Vikram Seth's novel is, at its core, a love story: Lata and her mother, Mrs. Rupa Mehra, are both trying to find-through love or through exacting maternal appraisal-a suitable boy for Lata to marry. ", image_path: "http://d.gr-assets.com/books/1329421639l/50365.jpg", edition: "Paper Back edition", price: 3.30, quantity: 1, sale_type: "Renting", user_id: u1.id)
b10 = Book.create(title: "The Fountainhead", isbn: "978-0451191151", description: "This instant classic is the story of an intransigent young architect, his violent battle against conventional standards, and his explosive love affair with a beautiful woman who struggles to defeat him.", image_path: "http://www.valmuller.com/wp-content/uploads/2013/11/THE-FOUNTAINHEAD-by-Ayn-Rand.jpg", edition: "Paper Back edition", price: 10.99, quantity: 1, sale_type: "Renting", user_id: u1.id)


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


a1 = Author.create(author_name: "Martina Boone")
a2 = Author.create(author_name: "P.G.Wodehouse")
a3 = Author.create(author_name: "Anne Frank")
a4 = Author.create(author_name: "Eleanor Roosevelt")
a5 = Author.create(author_name: "Andy Weir")
a6 = Author.create(author_name: "George R.R. Martin")
a7 = Author.create(author_name: "J.K. Rowling")
a8 = Author.create(author_name: "Walter Isaacson")
a9 = Author.create(author_name: "Stieg Larsson")
a10 = Author.create(author_name: "Vikram Seth")
a11 = Author.create(author_name: "Ayn Rand")

t1 = Tag.create(tag_name: "best seller")
t2 = Tag.create(tag_name: "martina boone")
t3 = Tag.create(tag_name: "thriller")
t4 = Tag.create(tag_name: "romance")
t5 = Tag.create(tag_name: "wodehouse")
t6 = Tag.create(tag_name: "comedy")
t7 = Tag.create(tag_name: "fiction")
t8 = Tag.create(tag_name: "novel")
t9 = Tag.create(tag_name: "bertie wooster")
t10 = Tag.create(tag_name: "war")
t11 = Tag.create(tag_name: "history")
t12 = Tag.create(tag_name: "classics")
t13 = Tag.create(tag_name: "world war ii")
t14 = Tag.create(tag_name: "movie adaption")
t15 = Tag.create(tag_name: "science")
t16 = Tag.create(tag_name: "suspense")
t17 = Tag.create(tag_name: "space")
t18 = Tag.create(tag_name: "tv series adaption")
t19 = Tag.create(tag_name: "game adaption")
t20 = Tag.create(tag_name: "fantasy")
t21 = Tag.create(tag_name: "adventure")
t22 = Tag.create(tag_name: "game of thrones books")
t23 = Tag.create(tag_name: "sorcery")
t24 = Tag.create(tag_name: "biography")
t25 = Tag.create(tag_name: "steve jobs")
t26 = Tag.create(tag_name: "apple owner")
t27 = Tag.create(tag_name: "computer")
t28 = Tag.create(tag_name: "technology")
t29 = Tag.create(tag_name: "business")
t30 = Tag.create(tag_name: "mystery")
t31 = Tag.create(tag_name: "crime")
t32 = Tag.create(tag_name: "adult")
t33 = Tag.create(tag_name: "modern classics")
t34 = Tag.create(tag_name: "india")
t35 = Tag.create(tag_name: "love story")
t36 = Tag.create(tag_name: "vikram seth")
t37 = Tag.create(tag_name: "cultural")
t38 = Tag.create(tag_name: "contemporary")
t39 = Tag.create(tag_name: "ayn rand")
t40 = Tag.create(tag_name: "philosophy")
t41 = Tag.create(tag_name: "politics")

b1.categories << [c1, c2]
b1.publishers << [p1]
b1.authors << [a1]
b1.tags << [t1, t2, t3, t4]

b2.categories << [c3, c4, c14]
b2.publishers << [p2]
b2.authors << [a2]
b2.tags << [t1, t5, t6, t7, t8, t9]

b3.categories << [c5, c6, c7]
b3.publishers << [p3]
b3.authors << [a3, a4]
b3.tags << [t1, t10, t11, t12, t8, t13]

b4.categories << [c8, c4, c2]
b4.publishers << [p4]
b4.authors << [a5]
b4.tags << [t1, t14, t15, t7, t16, t17]

b5.categories << [c2, c4, c9, c10, c11, c12]
b5.publishers << [p3]
b5.authors << [a6]
b5.tags << [t1, t18, t19, t20, t21, t22]

b6.categories << [c2, c3, c4, c9, c11, c12, c13, c14]
b6.publishers << [p5]
b6.authors << [a7]
b6.tags << [t1, t14, t19, t20, t21, t23]

b7.categories << [c5, c7, c8, c15, c16, c17]
b7.publishers << [p6]
b7.authors << [a8]
b7.tags << [t24, t14, t25, t26, t27, t28, t29]

b8.categories << [c2, c4, c18, c19, c20]
b8.publishers << [p7]
b8.authors << [a9]
b8.tags << [t1, t14, t30, t31, t32, t3]

b9.categories << [c1, c4, c9, c21, c22]
b9.publishers << [p8]
b9.authors << [a10]
b9.tags << [t33, t34, t35, t20, t36, t4, t37, t38]

b10.categories << [c1, c4, c14, c22, c23]
b10.publishers << [p9]
b10.authors << [a11]
b10.tags << [t1, t12, t39, t38, t40, t41]

OrderStatus.delete_all
OrderStatus.create! id: 1, name: "In Progress"
OrderStatus.create! id: 2, name: "Placed"
OrderStatus.create! id: 3, name: "Cancelled"