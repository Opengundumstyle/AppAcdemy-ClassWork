class Flying

    def initialize(name)
        @name = name
    end
   
    def fly  
        puts "we have a lift off"

    end

     private
      def land
         puts @name + "is coming in hot."
      end
   

end

class Squirrel < Flying
        def initialize(name)
            @name = name
        end

        def talk
            puts "I am a squirrelm,my name is " + @name
            
        end

        def getland
             land
        end

end


s = Squirrel.new("sandy")

puts s.talk
puts s.getland






# my_rocket = Flying.new('Rocket')
# my_rocket.fly
# my_rocket.land