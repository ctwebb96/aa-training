def is_prime?(num)
    if num < 2
        return false
    end
    (2...num).each do |n|
        if num % n == 0 
            return false
        end
    end

    true
end

def nth_prime(n)
    count = 0

    num = 1
    while count < n
        num += 1
        if is_prime?(num)
            count += 1
        end
    end
    num
end

def prime_range(min, max)
    arr = []
    (min..max).each do |n|
        if is_prime?(n)
            arr << n
        end
    end

    arr
end
