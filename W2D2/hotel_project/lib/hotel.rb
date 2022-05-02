require_relative "room"

class Hotel

  attr_reader :rooms

   def initialize(name,hash)
    @name = name
    @rooms = {}
    hash.each do |k,v|

        @rooms[k] = Room.new(v)

    end

   end
   
  def name
      @name.split(" ").map(&:capitalize).join(" ")
  end


  def room_exists?(room)

    @rooms.keys.include?(room)

  end


  def check_in(person,room)
         
      if  room_exists?(room)

          puts'check in successful' if  @rooms[room].add_occupant(person)

          puts 'sorry, room is full'

      else
          puts 'sorry, room does not exist'
      end

  end


  def has_vacancy?

     @rooms.each do |k,v|
        if v.available_space > 0
            return true
        end
     end

   false
end


def list_rooms
    
    @rooms.each do |k,v|
        puts   k +  v.available_space.to_s
     end
  
end


end