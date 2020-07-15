def s_check(s_input)
  return (s_input == "0") || (s_input.to_i != 0)
end


puts "Hello! Please enter the word or sentence you would like us to find the 
substrings of that happen to be in our in arbitrary list of words."
query = gets.chomp
if s_check(query)
  puts "You did not enter a String!"
else
  puts "Great. Here is your list of substrings:"
  #p sub-string(query)
end
