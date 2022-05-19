class Parent
   def foo(thing_1,thing_2)
      p thing_1 + "!!"
      p thing_2 + "!!"
   end
end



class Child < Parent


    def foo(arg_1,arg_2)
        p arg_1
        p arg_2
        super("周杰伦","杀马特")
        
    end
end


my_child = Child.new
# p my_child.foo('potato','squash')
my_child.foo("loki",'love')