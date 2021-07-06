class PigLatinizer < Sinatra::Base

    attr_accessor :phrase, :pig_phrase

    def intitialize(phrase)
        @phrase = phrase
        @pig_phrase = piglatinizer(phrase)
    end

end

    def piglatinizer(phrase)
        words = phrase.split(" ")
        new_words = words.map{|word|jumbler(word)}
        new_words.join(" ")
    end

    def jumbler(word)
        letters = word.split("")
        vowels = ['a','e','i','o','u']
        if vowels.include?(letters[0])
        letters << ['w','a','y']
        else 
            if letters.find_index{|x|vowels.include?(x)}
                index = letters.find_index{|x|vowels.include?(x)}
                const_sound = letters.shift(index)
                const_sound.each{|x|letters<<x}
                letters << ['a','y']
            end
        end
        letters.join("")
    end