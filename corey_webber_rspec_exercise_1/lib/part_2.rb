def hipsterfy(word)
    vowels = "aeiou"

    i = word.length - 1 #last index
    while i >= 0
        if vowels.include?(word[i])
            return word[0...i] + word[i+1..-1]
        end

        i -= 1
    end

    word
end

def vowel_counts(str)
    vowels = "aeiou"
    count = Hash.new (0)
    str.each_char do |char|
        if vowels.include? (char.downcase)
            count[char.downcase] += 1
        end
    end
    count
end

def caesar_cipher(message, n)
    alphabet = ("a".."z").to_a
    new_message = ""

    message.each_char do |char|
        if alphabet.include?(char)
            old_idx = alphabet.index(char)
            new_idx = old_idx + n
            new_char = alphabet[new_idx % 26]
            new_message += new_char
        else
            new_message += char
        end
    end

    return new_message
end
