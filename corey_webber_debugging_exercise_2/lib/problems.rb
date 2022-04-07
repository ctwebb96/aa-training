# Run `bundle exec rspec` and satisy the specs.
# You should implement your methods in this file.
# Feel free to use the debugger when you get stuck.

def prime?(n)
    return false if n < 2

    (2...n).none? { |i| n % i == 0 }
end 


def largest_prime_factor(n)
    n.downto(2) do |factor|
        if n % factor == 0 && prime?(factor)
            return factor
        end
    end
end


def unique_chars?(string)
    already_seen = []
    string.each_char do |char|
        if already_seen.include?(char)
            return false
        end
        already_seen << char
    end

    true
end

def dupe_indices(arr)
    indices = Hash.new { |h, k| h[k] = [] } #2 ways to use

    arr.each_with_index do |ele, i| 
        indices[ele] << i
    end

    indices.select { |ele, array| array.length > 1 }
end


def ele_count(arr)
    count = Hash.new(0) 

    arr.each { |ele| count[ele] += 1 }

    count
end

def ana_array(arr_1, arr_2)
    count_1 = ele_count(arr_1)
    count_2 = ele_count(arr_2)
    count_1 == count_2
end
