def caesar_cipher(string, key)

    alphabet = ["A", "a", "B", "b", "C", "c", "D", "d", "E", "e", "F", "f", "G", "g", 
        "H", "h", "I", "i", "J", "j", "K", "k", "L", "l", "M", "m", "N", "n", "O", "o", 
        "P", "p", "Q", "q", "R", "r", "S", "s", "T", "t", "U", "u", "V", "v", "W", "w", 
        "X", "x", "Y", "y", "Z", "z"]
    
    if key > 25 || key < -25
        return puts "Please input a key that is between -25 and 25"
    end
    
    #Split given string and transform the individual letters to their shifted index number
    index_arr = string.split(//).map {|letter| 
        if letter =~ /[a-zA-Z]/
            letter = (alphabet.index(letter) + (key * 2)).to_s
        else
            #Preserves the form of non-letters (spaces, symbols etc.)
            letter = letter
        end
    }

    #Transform each index number back into a string (the new shifted character)
    new_letter_arr = index_arr.map { |index|
        if index =~ /[0-9]/
            index = index.to_i
                #Wrap from z to a
                if index > 50
                    index -= 52
                end
            index = alphabet[index]
        else
            #Preserves the form of non-letters (spaces, symbols etc.)
            index = index
        end
    }
    p new_letter_arr.join
end

caesar_cipher("What a string!", 5)