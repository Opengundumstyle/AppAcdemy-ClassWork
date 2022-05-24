# == Schema Information
#
# Table name: cats
#
#  id          :integer      not null, primary key
#  name        :string
#  color       :string
#  breed       :string
#
# Table name: toys
#
#  id          :integer      not null, primary key
#  name        :string
#  color       :string
#  price       :integer
#
# Table name: cat_toys
#
#  id          :integer      not null, primary key
#  cat_id      :integer      not null, foriegn key
#  toy_id      :integer      not null, foreign key

require_relative '../data/pg_helper.rb'

def gold_cat_toys
  # Find all the toys that are `Gold` in color and have more than one word in
  # the name.

  # Sort the toys by name alphabetically.\
  execute(<<-SQL)
    select
       toys.name
    from 
      toys
    where
      toys.color = 'Gold' 
    and 
      toys.name like '% %'
    order by 
      toys.name ;
  SQL
end

def extra_jet_toys
  # `Jet` the cat has a ton of toys! 
  # Find all of Jet's toys that have the same name, and the number of toys 
  # with the same name.
  # Sort the toys by name alphabetically.

  execute(<<-SQL)
     select 
         toys.name, COUNT(toys.name)
      from 
        cats
      join 
         cat_toys
       on  
         cat_toys.cat_id = cats.id
       join
         toys 
       on 
         toys.id = cat_toys.toy_id
      where 
          cats.name = 'Jet'
       group by 
         toys.name
       having 
         COUNT(toys.name) > 1
       order by 
         toys.name
  SQL
end


def cats_with_a_lot
  # Find the names of all cats with more than 7 toys.
  # Sort the cats by cat name alphabetically.

  execute(<<-SQL)
      select 
        cats.name
      from 
        cats
      join 
         cat_toys 
        on cats.id = cat_toys.cat_id
      join 
          toys
        on cat_toys.toy_id = toys.id
       
      group by 
        cats.id
      having 
        COUNT(toys.id) > 7
      order by 
         cats.name

  SQL
end

def just_like_orange
  # Find the breed of the cat named `Orange`.
  # Then list the cats names and the breed of all the cats of Orange's breed.
  # Exclude the cat named `Orange` from your results.
  # Order by cats name alphabetically.

  execute(<<-SQL)
       select 
         cats.name, cats.breed
        from 
          cats
        where
          breed = (
            select 
              breed
            from 
              cats
            where
              name = 'Orange'
          ) and name != 'Orange'
         order by
            cats.name;
  SQL
end

def expensive_tastes
  # Find the most expensive `Tiger` toy.
  # Find all the cats that own that specific toy.
  # List the name of the cat, name of the toy, and color of the toy.
  # Sort by cat name alphabetically.
 
  execute(<<-SQL)
       select 
         cats.name, toys.name, toys.color
       from 
          cats
        join 
          cat_toys
        on 
          cat_toys.cat_id = cats.id
        join 
          toys
        on
          toys.id =  cat_toys.toy_id
        where
          toys.name  = 'Tiger'  and price = (
             select 
              price
             from 
              toys
             where 
               name = 'Tiger'
             order by 
              price desc
             limit 1
          )
           order by 
            cats.name
  SQL
end