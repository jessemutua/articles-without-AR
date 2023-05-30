#This top part requires the files in Magazine and Article 
require_relative "./Magazine"
require_relative "./Article"

#This initialises the class Author
class Author
  #read the author and articles using macro programmimg
    attr_reader :author, :articles

  #Declear a class variable authors that and initialise it as an empty array 

    @@authors = []
  #The initialize method for this class reqquires an argument author

    def initialize(author)
      @author= author

    #For each initilization of the Author class, it creates an empty array articles to hold an author instance aticles 
      @articles = []

      #adds each instance into the class variable 
      @@authors << self
    end
  #all returns all author instances
    def self.all
      @@authors
    end
#returns author name
    def author
      @author
    end

  
  #add_article method gets two object arguments and when called on an author instance it creates an article by calling Article class initialisation on the article 
    def add_article(magazine:, title: )
        article = Article.new(author, magazine:magazine, title:title)

      #For each new author instance called with add_paricle it creates an article and adds it to te articles instance variable
        @articles << article

        #return article
        article
    end
  #maps each article with its magazine
    def magazines
      @articles.map { |article| article.magazine }.uniq
      
    end

  
  end
  a1= Author.new("Jesse")
  m1 = Magazine.new("233", "123")
  title= "into Ai"
  b1 = a1.add_article(author:self, magazine:m1, title: "Article Title")

  puts b1.author


  