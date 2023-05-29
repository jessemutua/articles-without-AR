class Article
    attr_reader :name, :title, :magazine
    @@all = []
    def initialize(name:, magazine:, title:)
        @name= name
        @magazine= magazine
        @title= title
        @@all << self
    end
    def title
        @title
    end
    def @@all
        @@all
    end
end