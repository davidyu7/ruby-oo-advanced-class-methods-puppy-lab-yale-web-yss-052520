# Add your code here
class Dog

    @@all = []

    attr_accessor :name

    def initialize(name)
        @name = name
        self.save
    end

    def self.all
        @@all
    end

    def self.print_all
        self.all.each{|d| puts d.name}
    end

    def self.clear_all
        self.all.clear
    end

    def save
        self.class.all << self
    end

end