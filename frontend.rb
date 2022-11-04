require "http"

system "clear"

# MOVE TO PRACTICE WEB REQUESTS

puts "Welcome to the Landscaping Store. The items below are currently in stock:"
puts "[1] Heavy Duty Wide Shovel"
puts "[2] Gas Lawnmower"
puts "[3] 18 in. Gravel Rake"
puts "[4] Heavy Duty Work Gloves"
puts "[5] Soil Topper"

puts "[c] To add a new item"
puts "[d] To remove an item"

# READ
input = gets.chomp

if input == "1"
  response = HTTP.get("http://localhost:3000/products/7")
  product = response.parse["name"]
  price = response.parse["price"]
  puts "The #{product} costs $#{price}."
elsif input == "2"
  response = HTTP.get("http://localhost:3000/products/2")
  product = response.parse["name"]
  price = response.parse["price"]
  puts "The #{product} costs $#{price}."
elsif input == "3"
  response = HTTP.get("http://localhost:3000/products/3")
  product = response.parse["name"]
  price = response.parse["price"]
  puts "The #{product} costs $#{price}."
elsif input == "4"
  response = HTTP.get("http://localhost:3000/products/4")
  product = response.parse["name"]
  price = response.parse["price"]
  puts "The #{product} costs $#{price}."
elsif input == "5"
  response = HTTP.get("http://localhost:3000/products/5")
  product = response.parse["name"]
  price = response.parse["price"]
  puts "The #{product} costs $#{price}."
end

#CREATE

if input == "c"
  puts "Type in an item name."
  name = gets.chomp
  puts "Type in a price."
  price = gets.chomp.to_i
  puts "Copy and paste in an image URL"
  image_url = gets.chomp
  puts "Type out a description for the item."
  description = gets.chomp



# DELETE

if input == "d"
  puts "Which item from the selection above would you like to remove from the store?"
  input = gets.chomp
  if input == "1"
    response = HTTP.delete("http://localhost:3000/products/7")
    puts "Deleted."
  end
  if input == "2"
    response = HTTP.delete("http://localhost:3000/products/2")
    puts "Deleted."
  end
  if input == "3"
    response = HTTP.delete("http://localhost:3000/products/3")
    puts "Deleted."
  end
  if input == "4"
    response = HTTP.delete("http://localhost:3000/products/4")
    puts "Deleted."
  end
  if input == "5"
    response = HTTP.delete("http://localhost:3000/products/5")
    puts "Deleted."
  end
end
