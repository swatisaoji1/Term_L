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
b2 = Book.create(title: "Persuasion", isbn: "978-1481411257", tags: ["Best seller", "Martina Boone", "Thriller", "Romance"], description: "skillfully blends rich magic and folklore with adventure, sweeping romance, and hidden treasure", image_path: "http://d.gr-assets.com/books/1423146561l/23450710.jpg", edition: "3rd edition", price: 11.5, quantity: 1)
b3 = Book.create(title: "Persuasion", isbn: "978-1481411257", tags: ["Best seller", "Martina Boone", "Thriller", "Romance"], description: "skillfully blends rich magic and folklore with adventure, sweeping romance, and hidden treasure", image_path: "http://d.gr-assets.com/books/1423146561l/23450710.jpg", edition: "3rd edition", price: 11.5, quantity: 1)
b4 = Book.create(title: "Persuasion", isbn: "978-1481411257", tags: ["Best seller", "Martina Boone", "Thriller", "Romance"], description: "skillfully blends rich magic and folklore with adventure, sweeping romance, and hidden treasure", image_path: "http://d.gr-assets.com/books/1423146561l/23450710.jpg", edition: "3rd edition", price: 11.5, quantity: 1)
b5 = Book.create(title: "Persuasion", isbn: "978-1481411257", tags: ["Best seller", "Martina Boone", "Thriller", "Romance"], description: "skillfully blends rich magic and folklore with adventure, sweeping romance, and hidden treasure", image_path: "http://d.gr-assets.com/books/1423146561l/23450710.jpg", edition: "3rd edition", price: 11.5, quantity: 1)
b6 = Book.create(title: "Persuasion", isbn: "978-1481411257", tags: ["Best seller", "Martina Boone", "Thriller", "Romance"], description: "skillfully blends rich magic and folklore with adventure, sweeping romance, and hidden treasure", image_path: "http://d.gr-assets.com/books/1423146561l/23450710.jpg", edition: "3rd edition", price: 11.5, quantity: 1)
b7 = Book.create(title: "Persuasion", isbn: "978-1481411257", tags: ["Best seller", "Martina Boone", "Thriller", "Romance"], description: "skillfully blends rich magic and folklore with adventure, sweeping romance, and hidden treasure", image_path: "http://d.gr-assets.com/books/1423146561l/23450710.jpg", edition: "3rd edition", price: 11.5, quantity: 1)
b8 = Book.create(title: "Persuasion", isbn: "978-1481411257", tags: ["Best seller", "Martina Boone", "Thriller", "Romance"], description: "skillfully blends rich magic and folklore with adventure, sweeping romance, and hidden treasure", image_path: "http://d.gr-assets.com/books/1423146561l/23450710.jpg", edition: "3rd edition", price: 11.5, quantity: 1)
b9 = Book.create(title: "Persuasion", isbn: "978-1481411257", tags: ["Best seller", "Martina Boone", "Thriller", "Romance"], description: "skillfully blends rich magic and folklore with adventure, sweeping romance, and hidden treasure", image_path: "http://d.gr-assets.com/books/1423146561l/23450710.jpg", edition: "3rd edition", price: 11.5, quantity: 1)
b10 = Book.create(title: "Persuasion", isbn: "978-1481411257", tags: ["Best seller", "Martina Boone", "Thriller", "Romance"], description: "skillfully blends rich magic and folklore with adventure, sweeping romance, and hidden treasure", image_path: "http://d.gr-assets.com/books/1423146561l/23450710.jpg", edition: "3rd edition", price: 11.5, quantity: 1)


c1 = Category.create(category_name: "Romantic")
c2 = Category.create(category_name: "Suspense")

p1 = Publisher.create(publisher_name: "Simon Pulse")

a1 = Author.create(first_name: "Martina", last_name: "Boone")

b1.categories << [c1, c2]
b1.publishers << [p1]
b1.authors << [a1]
