require_relative "room"

class Hotel
    #PART 2
    #initialize
   def initialize(name,capacities)
       @name = name
       @rooms = {}
       capacities.each do |room,capacity|
          @rooms[room] = Room.new(capacity)
       end
   end

    #name
    def name
      @name.split(" ").map{|name| name.capitalize}.join(" ")
    end
    
    #rooms
    def rooms
      @rooms
    end
    
    #room_exist?
    def room_exists?(roomName)
        return true if @rooms[roomName]
        false
    end

   #check_in
   def check_in(person, roomName)
       if room_exists?(roomName)
            if  @rooms[roomName].add_occupant(person)
                p 'check in successful'
            else
                p 'sorry,room is full'
            end
       else
          p 'sorry, room doesn not exist'
       end
   end
  
 #has_vacancy?

   def has_vacancy?
     @rooms.each do |k,v| 
             if v.full? == false
                return true
             end
        end
        false    
   end


# list rooms
def list_rooms
    @rooms.each do |k,v|
        puts k + ": " + v.available_space.to_s  
    end
end
  

    
end
