class PigLatinizer

  def initialize(string)
    @string = string
  end

  def into_pig_latin
    array = @string.split(" ")
    array.map do |word|
      letter = word.slice(0)
    if letter.downcase == "a" || letter.downcase == "e" || letter.downcase == "i" || letter.downcase == "o" || letter.downcase == "u"
       word + "way"
    else
      consonants = []
      consonants << word[0]
        if ["a", "e", "i", "o", "u"].include?(word[1]) == false
          consonants << word[1]
          if ["a", "e", "i", "o", "u"].include?(word[2]) == false
            consonants << word[2]
          end
        end
        "#{word[consonants.length..-1] + consonants.join + "ay"}"
      end
    end.join(" ")
  end




end
