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

b1 = Book.create(title: "Persuasion", isbn: "978-1481411257", tags: ["Best seller", "Martina Boone", "Thriller", "Romance"], description: "skillfully blends rich magic and folklore with adventure, sweeping romance, and hidden treasure", image_path: "http://d.gr-assets.com/books/1423146561l/23450710.jpg", edition: "3rd edition", price: 11.5, quantity: 1)
b2 = Book.create(title: "Thank You, Jeeves", isbn: "978-1585674343", tags: ["Wodehouse", "Comedy", "Best seller", "Fiction", "Novel", "Bertie Wooster"], description: "A full cast of Wodehouse creations--including tyrannical relatives, beastly acquaintances, demon children, and literary fatheads--return for further near catastrophes and sparkling comedy Overlook is proud to present four more antic selections from comic genius, P.G. Wodehouse.", image_path: "http://ecx.images-amazon.com/images/I/51beNt3B%2BlL._SY344_BO1,204,203,200_.jpg", edition: "4th edition", price: 13.80, quantity: 3)
b3 = Book.create(title: "The Diary of a Young Girl", isbn: "978-0553296983", tags: ["War", "History", "Best seller", "Classics", "Novel", "World War II"], description: "Discovered in the attic in which she spent the last years of her life, Anne Frank's remarkable diary has since become a world classic—a powerful reminder of the horrors of war and an eloquent testament to the human spirit.", image_path: "http://ecx.images-amazon.com/images/I/519HKX9M69L.jpg", edition: "Reprint edition", price: 6.75, quantity: 1)






c1 = Category.create(category_name: "Romantic")
c2 = Category.create(category_name: "Suspense")
c3 = Category.create(category_name: "Comedy")
c4 = Category.create(category_name: "Fiction")
c5 = Category.create(category_name: "Historical")
c6 = Category.create(category_name: "Autobiography")
c7 = Category.create(category_name: "Non-Fiction")

p1 = Publisher.create(publisher_name: "Simon Pulse")
p2 = Publisher.create(publisher_name: "Harpercollins")
p3 = Publisher.create(publisher_name: "Bantam")

a1 = Author.create(first_name: "Martina", last_name: "Boone")
a2 = Author.create(first_name: "P.G.", last_name: "Wodehouse")
a3 = Author.create(first_name: "Anne", last_name: "Frank")
a4 = Author.create(first_name: "Eleanor", last_name: "Roosevelt")

b1.categories << [c1, c2]
b1.publishers << [p1]
b1.authors << [a1]
b2.categories << [c3, c4]
b2.publishers << [p2]
b2.authors << [a2]
b3.categories << [c5, c6, c7]
b3.publishers << [p3]
b3.authors << [a3, a4]

