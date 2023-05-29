require_relative "./Article"
class Author
    attr_reader :name, :articles
  
    @@authors = []
  
    def initialize(name)
      @name = name
      @articles = []
      @@authors << self
    end
  
    def self.all
      @@authors
    end
  
    def add_article(magazine, title)
        article = Article.new(author: self, magazine: magazine, title: title)
        @articles << article
    end
  
    def magazines
      @articles.map { |article| article.magazine }.uniq
    end
  end
  A1= Author.new("Jesse")
  B1= A1.add_article("234", "1234")
  puts B1.inspect
  