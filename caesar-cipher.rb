def caesar_cipher(string, key)

    alphabet = ["a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m",
        "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z"]
    
    if key > 25 || key < -25
        return puts "Please input a key that is between -25 and 25"
    end

    arr = string.split(//)
    p arr
    
    arr2 = arr.map {|letter| 
        if letter =~ /[a-zA-Z]/
        letter = alphabet.index(letter) + key
        else
        letter = letter
        end
    }
    p arr2

    arr3 = arr2.map { |index|
        index = index.to_s   
    }
    p arr3

    arr4 = arr3.map { |index|
        if index =~ /[0-9]/
            index = index.to_i
            if index > 25
                index -= 26
            end
            index = alphabet[index]
        else
            index = index
        end
    }

    p arr4
    arr4.join
end

p caesar_cipher("acc dee!", 5)