class PigLatinizer 

    # def initialize(phrase)
    #     @phrase = phrase
    # end

    def piglatinize(string)
        # piglatinized = ""
        string = string.split(" ").map do |word|
            if word.match(/^([^aeiouAEIOU]+)/)
                first_letter = word.match(/^([^aeiouAEIOU]+)/)
                "#{word.gsub(/^([^aeiouAEIOU])+/, "")}#{first_letter}ay"
            else 
                "#{word}way"
            end
        end
        string.join(" ")
    end
    
end