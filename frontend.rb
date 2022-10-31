require "http"

system "clear"

puts "Choose an option:"
puts "[1] Random Fortune"
puts "[2] Lotto Numbers"
puts "[3] Page Visit Counter"

input_option = gets.chomp
if input_option == "1"
  response = HTTP.get("http://localhost:3000/fortune_teller.json")
  fortune = response.parse["your_fortune"]
  puts fortune
elsif input_option == "2"
  response = HTTP.get("http://localhost:3000/lotto_gen.json")
  numbers = response.parse["message"]
  p numbers
elsif input_option == "3"
  response = HTTP.get("http://localhost:3000/counter_path.json"
  count = response.parse["visits"]
  p count
end
