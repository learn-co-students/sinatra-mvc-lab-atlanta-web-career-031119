class PigLatinizer

  attr_reader :text




   def piglant(text)
    consonent = []
    rest =[]
    array = text.split('')
    count = 0
    array.each do |c|
    if c.scan(/[bcdfghjklmnpqrstvwxyzBCDFGHJKLMNPQRSTVWXYZ]/).count > 0
    count += 1
    consonent << c
    else
    break
    end
    end

    while count < text.length
    rest << text[count]
    count +=1
    end

    finalarray = rest + consonent

    if array[0].scan(/[aeouiAEOUI]/).count > 0
    return "#{finalarray.join}way"
    else
    return "#{finalarray.join}ay"
    end
  end

   def piglatinize(text)
     array = []
     array = text.split(' ')
     #print array
     result = []
     array.each do |word|
     result << piglant(word)
     end
     return result.join(" ")
    end

end



# def piglatinize(text)
# array = []
# array = text.split(' ')
# #print array
#
# array.each do |word|
# # return piglantizemain(word)
# end
# end




  # x = Piglatinizer.new
  #  x.piglatinize ("smile")
