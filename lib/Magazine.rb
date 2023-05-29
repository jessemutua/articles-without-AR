class Magazine
    attr_accessor :name, :category
    @@all= []
    def initialize(name, category)
        @name= name
        @category= category
        @@all << self
        
    end
    def namey
        @name
    end

    def category
        @category
    end

    def contributors
        Article.all.select{|article| article.magazine == self}.map {|article| article.author}
    end

    def self.all
        @@all
    end

end
