class Book
    attr_accessor :author
    attr_reader :title, :word_count

    @@all = []

    def initialize(title, word_count)
        @title = title
        @word_count = word_count
        Book.all.push(self)
    end

    def self.all
        @@all
    end 
    

end
