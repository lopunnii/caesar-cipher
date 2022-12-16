def caesar_cipher(string, key)

    alphabet = ["A", "a", "B", "b", "C", "c", "D", "d", "E", "e", "F", "f", "G", "g", "H", "h", "I", "i", "J", "j", "K", "k", "L", "l", "M", "m",
        "N", "n", "O", "o", "P", "p", "Q", "q", "R", "r", "S", "s", "T", "t", "U", "u", "V", "v", "W", "w", "X", "x", "Y", "y", "Z", "z"]
    
    if key > 25 || key < -25
        return puts "Please input a key that is between -25 and 25"
    end

    arr = string.split(//)
    p arr
    
    arr2 = arr.map {|letter| 
        if letter =~ /[a-zA-Z]/
        letter = alphabet.index(letter) + (key * 2)
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
            if index > 50
                index -= 52
            end
            index = alphabet[index]
        else
            index = index
        end
    }

    p arr4
    p arr4.join
end

caesar_cipher("What a string!", 5)