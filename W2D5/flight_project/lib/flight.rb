class Flight

 def initialize(flight,capacity)
    @flight_number = flight
    @capacity = capacity
    @passengers = []
 end

def passengers
   @passengers
end

def full?
    @passengers.length >= @capacity
end

def board_passenger(passenger)
      
    if  passenger.has_flight?(@flight_number)
           if full? == false
            @passengers << passenger
           end
    end

end

def list_passengers
      @passengers.map{|passenger| passenger.name}
end

def [](index)

   @passengers[index]

end


def <<(passenger)

    board_passenger(passenger)

end

end
