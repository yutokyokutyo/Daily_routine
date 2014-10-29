array = ["Bear", "Benford", "Egain"]
p array.map{|name| "G. #{name}" }

hash = {
"Baxter" => "Stephen", "Stross" => "Charles", "Reynolds" => "Alastar"
}
hash.each do |key, value|
  puts "#{value} #{key}"
end
