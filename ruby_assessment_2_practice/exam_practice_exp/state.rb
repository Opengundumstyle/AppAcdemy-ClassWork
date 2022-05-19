class Municipality
    attr_reader :state

    def initialize
      @state = "cali"
    end
  end

  class City < Municipality
    
    def initialize
      
      super

    end
  end

  class Town < Municipality
   attr_accessor :population
    def initialize
       super
       @population = 10000
   
     
    end
  end

  class County < Municipality
    def change_state(new_state)
      self.state = new_state
    end
  end
  sht = Municipality.new
  p sht.state
  nyc = City.new
  oaktown = Town.new
  marin = County.new
 p nyc.state

 p oaktown.state
 p marin.state
 