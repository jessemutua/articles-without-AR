require_relative "./Magazine"
require_relative "./Article"

class Author
    attr_reader :name, :articles
  
    @@authors = []
  
    def initialize(author)
      @author= author
      @articles = []
      @@authors << self
    end
  
    def self.all
      @@authors
    end

    def author
      @author
    end
  
    def add_article(magazine, title)
        article = Article.new(author, magazine: magazine, title: title)
        self.author= author
        @articles << article
        article
    end
  
    def magazines
      @articles.map { |article| article.magazine }.uniq
    end

  end
  a1= Author.new("Jesse")
  m1 = Magazine.new("233", "123")
  title= "into Ai"
  b1 = a1.add_article(m1, "Article Title")

  puts b1.author.name

  