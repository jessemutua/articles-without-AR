#requires Author and Magazine
require_relative "./Author"
require_relative "./Magazine"
#Declares and initiliases class Article
class Article

    #reads author title and magazine since they cannot change after initailisation we use reader
    attr_reader :author, :title, :magazine

    # Class Variable to hold all instances
    @@all = []

    #Initialiser with initial vvalies that can't change
    def initialize(author:, magazine:, title:)
        @author= author
        @magazine= magazine
        @title= title
        @@all << self
        #Gets the articles array defined in the initializer method of Author 
        author.articles << self
    end
#returns author name
    def author
        @author
    end
#returns title
    def title
        @title
    end
#returns all
    def self.all
        @@all
    end
#returns magazine
    def magazine
        @magazine 
    end
end
