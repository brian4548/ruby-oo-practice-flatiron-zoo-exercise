class Animal

    attr_reader :specie :nickname
    attr_accessor :weight
    
    @@all = []
    
    def initialize(species, weight, nickname)
        @species = species
        @weight = weight 
        @nickname = nickname
        self.class.all << self 
    end

    def self.all
        @@all
    end

    def zoo
        Zoo.all.select do |zoo|
            zoo == self
    end

end
