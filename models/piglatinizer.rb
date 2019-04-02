class PigLatinizer

    attr_accessor :phrase

    def initialize(phrase)
        @phrase = phrase.downcase
    end

    def piglatin
        phrase_modded = ''
        phrase.split.each do |word|
            word2 = word += word[0]
            word2 += 'ay'
            word2[0] = ''
            word2 += ' '
            phrase_modded += word2
        end
        phrase_modded[-1] = ''
        phrase_modded
    end

end