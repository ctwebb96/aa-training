def proper_factors(num)
    (1...num).select { |n| num % n == 0 }
end

def aliquot_sum(num)
    proper_factors(num).sum
end

def perfect_number?(num)
    if num == aliquot_sum(num)
        return true
    end
    
    false
end

def ideal_numbers(n)
    nums = []

    i = 1
    while n > nums.length
        if perfect_number?(i)
            nums << i 
        end
        i += 1
    end

    nums
end

