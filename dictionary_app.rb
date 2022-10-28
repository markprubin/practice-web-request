require "http"

system "clear"

puts "Please enter in a word:"

#Entering new words
while true
  word = gets.chomp.downcase
  if word == "q".downcase
    break
  end

  # word = gets.chomp.downcase

  response = HTTP.get("https://api.wordnik.com/v4/word.json/#{word}/definitions?limit=200&includeRelated=false&useCanonical=false&includeTags=false&api_key=API")

  ###

  response2 = HTTP.get("https://api.wordnik.com/v4/word.json/#{word}/examples?includeDuplicates=false&useCanonical=false&limit=5&api_key=API")

  ###

  response3 = HTTP.get("https://api.wordnik.com/v4/word.json/#{word}/pronunciations?useCanonical=false&limit=50&api_key=API")

  ###

  response4 = HTTP.get("https://api.wordnik.com/v4/word.json/#{word}/audio?useCanonical=false&limit=50&api_key=API")

  word_def = response.parse(:json)
  word_ex = response2.parse(:json)
  word_pro = response3.parse(:json)
  word_audio = response4.parse(:json)

  definition = word_def[0]["text"]
  example = word_ex["examples"][0]["text"]
  pro = word_pro[0]["raw"]
  audio = word_audio[0]["fileUrl"]

  puts "Your Word: #{word.capitalize}"
  puts "-------"
  # puts "Defintion: #{definition}"
  # puts "-------"
  # puts "Example: #{example}"
  # puts "-------"
  # puts "Pronunciation: #{pro}"
  # puts "-------"
  system "open #{audio}"
end
