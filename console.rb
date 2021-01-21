require 'pry'
require_relative './book'
require_relative './author'

author1 = Author.new("Jonathan Swift")
author2 = Author.new("Emily Bronte")
author3 = Author.new("Toni Morrison")

book1 = Book.new("Gulliver's Travels", 107349)
book2 = Book.new("Wuthering Heights", 107945)
book3 = Book.new("Song of Solomon", 92400)
book4 = Book.new("Beloved", 96876)

book1.author = author1
book2.author = author2
book3.author = author3
book4.author = author3


# p book1.author
# p book2.title
# p Book.all
# p book3.word_count
# p Author.all
# p book1.author.name
# p author3.books

# p Book.all
author2.write_book("Poems", 72567)
# p Book.all

# p author2.total_words

# p Author.most_words

binding.pry


