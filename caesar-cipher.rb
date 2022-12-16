=begin
def caesar_cipher(string, key)

    alphabet = ["a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m",
    "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z"]
    
    if key > 25 || key < -25
        return puts "Please input a key that is between -25 and 25"
    end

    shifted_index = alphabet.index(string) + key

    if shifted_index > 25
        shifted_index -= 26
    end

    p shifted_index
    p alphabet[shifted_index]
end
=end

def caesar_cipher(string, key)

    alphabet = ["a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m",
        "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z"]
    
    if key > 25 || key < -25
        return puts "Please input a key that is between -25 and 25"
    end

    arr = string.split(//)
    arr2 = arr.map {|letter| letter = alphabet.index(letter) + key}
    arr3 = arr2.map { |index|
        if index > 25
            index -= 26
        end
        index = alphabet[index]
    }
    arr3.join
end

p caesar_cipher("l o v e", 5)

p "i love you".split(//)