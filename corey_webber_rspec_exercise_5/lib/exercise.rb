def zip(*arrs)
    length = arrs.first.length # lead with first array and counting the length of number of arrays

    (0...length).map do |i|
        arrs.map { |array| array[i] }
    end
end

def prizz_proc(arr, prc_1, prc_2)
    arr.select do |el|
        (prc_1.call(el) || prc_2.call(el)) && !(prc_1.call(el) && prc_2.call(el))
    end
end

def zany_zip(*arrs)
     length = arrs.map(&:length).max

    (0...length).map do |i|
        arrs.map { |array| array[i] }
    end
end

def maximum(arr, &prc)
    return nil if arr.empty?
    max = arr.first
    arr.each do |el|
        max = el if prc.call(el) >= prc.call(max)
    end

    max
end

def my_group_by(arr, &prc)
    groups = Hash.new { |k, v| k[v] = [] }

    arr.each do |el|
        key = prc.call(el)
        groups[key] << el
    end

    groups
end

def max_tie_breaker(arr, tie_breaker, &prc)
    return nil if arr.empty?
    max = arr.first
    arr.each do |el|
        if prc.call(el) > prc.call(max)
            max = el
        elsif prc.call(el) == prc.call(max) && tie_breaker.call(el) > tie_breaker.call(max)
            max = el
        end
    end

    max
end

def silly_syllables(sentence)
    words = sentence.split(' ')
    new_words = words.map do |word|
        num_vowels = vowel_indices(word).length 
        if num_vowels < 2
            word
        else
            change_word(word)
        end
    end

    new_words.join(' ')
end

def change_word(word)
    indices = vowel_indices(word)
    word[indices.first..indices.last]
end

def vowel_indices(word)
    vowels = "aeiou"
    indices = []
    word.each_char.with_index do |char, i|
    indices << i if vowels.include?(char)
    end
    indices
end
