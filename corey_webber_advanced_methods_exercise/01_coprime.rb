# Write a method, coprime?(num_1, num_2), that accepts two numbers as args.
# The method should return true if the only common divisor between the two numbers is 1.
# The method should return false otherwise. For example coprime?(25, 12) is true because
# 1 is the only number that divides both 25 and 12.
 # if divisor divides by both num1 and num2... then return false

def coprime?(num_1, num_2)
    (2..num_1).none? { |div| num_1 % div == 0 && num_2 % div == 0 }
end

p coprime?(25, 12)    # => true
p coprime?(7, 11)     # => true
p coprime?(30, 9)     # => false
p coprime?(6, 24)     # => false


#def coprime?(num_1, mum_2)
#    (2..num_1).none? do |divisor| num_1 % divisor == 0 && mum_2 % divisor == 0
#end