num = gets.to_i
phoneBook = {}

num.times do
    entry = gets.split
    phoneBook.merge! entry[0] => entry[1]
end

until STDIN.eof? do
    searchKey = gets.chomp
    puts phoneBook.key?(searchKey) ? "#{searchKey}=#{phoneBook[searchKey]}" : "Not found"
end
