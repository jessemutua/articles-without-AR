#This top part requires the files in Author and Article 
require_relative "./Author"
require_relative "./Article"


#This initialises the class Magazine
class Magazine
    #Reads and writes name and categeory
    attr_accessor :name, :category
    #creates a class varialbe to hold all instances of magazine
    @@all= []

    #initialises Magazine with name and category
    def initialize(name, category)
        @name= name
        @category= category
        @@all << self
        
    end
    #returns name 
    def name
        @name
    end
    #returns category
    def category
        @category
    end
 #returns category
    def contributors
        #Maos all articles with an author
        Article.all.select{|article| article.magazine == self}.map {|article| article.author}
    end
#returns#This initialises the class  all instances
    def self.all
        @@all
    end

end
