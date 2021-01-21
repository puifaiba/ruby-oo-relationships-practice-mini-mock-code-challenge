class Author
    attr_reader :name

    @@all = []

    def initialize(name)
        @name = name
        Author.all.push(self)
    end

    def self.all
        @@all
    end 

    def books
        Book.all.select {|book| book.author == self}
    end

    def write_book(title, word_count)
        book = Book.new(title, word_count)
        book.author = self
    end

    def total_words
        self.books.sum {|book| book.word_count}
    end

    def self.most_words
        Author.all.max_by {|author| author.total_words}
    end


end
