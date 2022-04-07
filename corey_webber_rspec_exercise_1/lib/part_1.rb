def average(num_1, num_2)
    (num_1 + num_2) / 2.0
end

def average_array(arr)
    arr.sum / (arr.length * 1.0)
end

def repeat(str, num)
    str * num
end

def yell(str)
    return str.upcase + "!"
end

def alternating_case(str)
    words = str.split(" ")
    
    new_words = words.map.with_index do |word, i|
        if i % 2 == 0
            word.upcase
        else 
            word.downcase
        end
    end

    new_words.join(" ")
end
