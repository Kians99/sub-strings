
def s_check(s_input) 
  return (s_input == "0") || (s_input.to_i != 0)
end

def break_down(query, length)
  x = ""
  subsets = Array.new(0)
  sum = 0
    for i in 0..(query.length - 1) do
      sum = sum + 1
      if i + length - 1 < query.length
        for j in i..i + length - 1 do
          x += query[j]
        end
        subsets.push(x)
        x = ""
      end
    end
  return subsets
end

def sub_string(query, word_list)
  matches = Hash.new(0)         
  word_list.each do |word| 
      if word.length <= query.length
	subsets_of_query = break_down(query, word.length)
	subsets_of_query.each do |sub|
	  if sub.casecmp(word) == 0
	    matches[word] += 1
	  end
	end
      end       
  end
  return matches
end

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own",
"part","partner","sit"]
puts "Hello! Please enter the word or sentence you would like us to find the 
substrings of that happen to be in our list of words." 
string_inp = gets.chomp
if s_check(string_inp)
  puts "You did not enter a String!"
else
  puts "Great. Here is your list of substrings:"
  p sub_string(string_inp, dictionary)
end
