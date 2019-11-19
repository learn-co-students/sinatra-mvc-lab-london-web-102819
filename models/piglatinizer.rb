class PigLatinizer
    
    def begins_with_vowel?(word)
        check=word.scan(/\b[aeiouAEIOU][a-z]*\b/)
        if check != []
            return true
        else
            return false
        end
    end

    def transform_to_pigword(word)
        check =begins_with_vowel?(word)
        if check == false
            split_word_ary=word.split(/([aeiouy].*)/)
            pig_word = split_word_ary[1]+split_word_ary[0]+"ay"
            pig_word
        else
            pig_word =  word+"way"
            pig_word
        end
    end 

    def piglatinize(user_input)
        user_input_clean = user_input.gsub(/\W/, ' ') #getting rid of punctuations
        word_arry = user_input_clean.split(" ")
        word_arry.map {|word|
            transform_to_pigword(word)
        }.join(" ")
    end 
end