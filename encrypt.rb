require './lib/enigma'
file = File.open(ARGV[0], "r")
file_2 = File.open(ARGV[1], "w")
message = file.read.split("\n")
enigma = Enigma.new
key = Key.new.number
date = Time.now.strftime("%d%m%y")

message.each do |line|
  file_2.puts(enigma.encrypt(line, key, date)[:encryption])
end

puts "Created #{ARGV[1]} with the key #{key} and date #{date}"
