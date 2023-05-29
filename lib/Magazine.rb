class Magazine
    attr_accessor :name, :category
    @@all= []
    def initialize(name, category)
        @name= name
        @category= category
        @@all << self
        
    end
    def name
        @name
    end

    def category
        @category
    end
    def self.all
        @@all
    end

end
b1= Magazine.new("JIUM", "987")
b3=Magazine.new("kjhd", "657")
puts Magazine.all.inspect