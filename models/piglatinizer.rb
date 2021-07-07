class PigLatinizer

     attr_accessor :text


     def piglatinize(text)
     @@vowels = ["a","e","o","u","i", "I", "A", "O", "U", "E"]
         words = text.split(" ")
         result = ""
         words.each do |w|
             if !@@vowels.include?(w[0])

                 while !@@vowels.include?(w[0]) do
                     letter_to_move = w[0]
                     w = w[1..-1] + letter_to_move
                 end

                 w = w + "ay "
             else
                 w = w + "way "
             end
             result << w
            end
         result.strip
     end

end