require "http"

system "clear"

puts "What kind of Maragarita would you enjoy right now? \n
- Margarita
- Blue Margarita
- Tommy's Margarita
- Whitecap Margarita
- Strawberry Margarita
- Smashed Watermelon Margarita"

input = gets.chomp

response = HTTP.get("https://www.thecocktaildb.com/api/json/v1/1/search.php?s=#{input}")

drink = response.parse(:json)

instructions = drink[0]["strInstructions"]

p instructions
