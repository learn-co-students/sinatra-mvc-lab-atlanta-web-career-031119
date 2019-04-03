class PigLatinizer
    def initialize
    end
    def piglatinize(word)
        phrase_arr=word.split(' ')
        output=[]
        phrase_arr.each do |index|
            output<<word_changer(index)
        end
        return output.join(' ')
    end
    def word_changer(word)
        word_arr=word.split('')
        num=0
        word_arr.each do |letter|
            if "aeiouAEIOU".include?(letter)
                break
            else
                num+=1
            end
        end
        if num == 0
            word_arr2=word_arr.push('w').flatten
        else
            word_arr2=word_arr.push(word_arr.shift(num)).flatten
        end
        drow=word_arr2.join + 'ay'
        return drow
    end
end