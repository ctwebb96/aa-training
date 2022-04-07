# Write a method, union, that accepts any number of arrays as arguments.
# The method should return an array containing all elements of the given arrays.
#1
# all_elements: ["x", "y"], [true, false]
# arr: [true, false]
#2
# all_elements: ["x", "y"], [true, false], [20, 21, 23]
# arr: [20, 21, 23]

def union(*arrays)
    arrays.inject { |all_elements, arr| all_elements + arr}
end


p union(["a", "b"], [1, 2, 3]) # => ["a", "b", 1, 2, 3]
p union(["x", "y"], [true, false], [20, 21, 23]) # => ["x", "y", true, false, 20, 21, 23]
