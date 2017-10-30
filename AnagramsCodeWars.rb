def anagrams(word, words)
    arrayCopy = words.map do |e| e.dup end #Strange workaround required because I couldn't seem to make a copy of each word without actually having it pointing to the original and altering it.
    anagramArray = []
    for i in 0...arrayCopy.length
        arrayWord = arrayCopy[i]
        counter = word.length
        word.each_char do |char|
            #if array word contains that letter, delete it and subtract from counter
            if (arrayWord.index(char) != nil)
                arrayWord[arrayWord.index(char),1] = "" #deletes first occurence of target letter
                counter -= 1
            end
        end
        if (arrayWord == "" && counter == 0)
            anagramArray << words[i]
        end
    end    
    return anagramArray
end

puts anagrams("baba",["abba","baab","sub","abbba","bbaa"])

=begin
s = "{}{} hello"
puts (s.index("l"))
s[s.index("l"),1] = ""
puts s
=end


