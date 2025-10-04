dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

puts 'Please enter text:'
sentence = gets.chomp.to_s


def sub_strings (sentence, dictionary)
    result = Hash.new(0)
    sentence_split = sentence.gsub(/[^a-zA-Z0-9\s]/, "").downcase.split
    sentence_split.each do |str|
      result[str] += 1 if dictionary.include?(str)
    end
    p result




end

sub_strings(sentence, dictionary)

# create method to  return a hash that matches and counts each instance of a given word