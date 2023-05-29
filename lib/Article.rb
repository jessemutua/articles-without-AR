require_relative "./Author"
require_relative "./Magazine"
class Article
    attr_reader :author, :title, :magazine
    @@all = []
    def initialize(author:, magazine:, title:)
        @author= author
        @magazine= magazine
        @title= title
        @@all << self
        author.articles << self
    end

    def author
        @author
    end

    def title
        @title
    end

    def self.all
        @@all
    end

    def magazine
        @magazine 
    end
end
