def element_count(arr)
    count = Hash.new(0)
    arr.each { |el| count[el] += 1 }
    count
end

def char_replace!(str, hash)
    (0..str.length).each do |i|
        if hash.has_key?(str[i])
            str[i] = hash[str[i]]
        end
    end

    str
end

def product_inject(arr)
    arr.inject { |product, n| product * n }
end