class Dog
  def initialize(name,breed,age,bark,favorite_foods)
     @name = name
     @breed = breed
     @bark = bark
     @age = age
     @favorite_foods = favorite_foods
  end
  
   def name
      @name
   end

   def breed
      @breed
   end

   def age
      @age
   end

   def age= number
      @age = number
   end
   
   def bark
      if @age > 3
         return @bark.upcase
      else
         return @bark.downcase
      end
   end
   
  def favorite_foods
      @favorite_foods
  end
    
  def favorite_food?(food)
       @favorite_foods.map{|fav| fave = fav.downcase}.include?(food.downcase)
  end

end
