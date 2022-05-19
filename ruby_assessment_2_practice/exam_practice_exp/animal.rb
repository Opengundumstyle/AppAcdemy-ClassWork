class Animal
    private
    attr_reader :species, :dicksize
  
    def initialize(species,dicksize)
      @species = species
      @dicksize = dicksize
    end
  end
  
  class Human < Animal
    attr_reader :name
  
    def initialize(name)
      # super calls the original definition of the method
      # If we hadn't passed "Homo Sapiens" to super, then `name` would have
      # been passed by default.
      super("Homo Sapiens","6-inch")
      @name = name
    end

   def show_power

    puts "#{species} has a #{dicksize} peepee!"

   end
   


end



brian = Human.new("brian")

p brian.name
p brian.show_power