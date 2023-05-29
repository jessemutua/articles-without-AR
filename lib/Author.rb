class Author
    attr_reader :name
    def initialize(name)
        @name= name
    end
    def name
        @name
    end

end
A1= Author.new("Jesse")
puts A1.name

