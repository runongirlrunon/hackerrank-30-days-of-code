num = gets.strip.to_i

num.times do
    character_array = gets.scan(/./)
    evens = ""
    odds  = ""

    character_array.each_with_index do |char, index|
        evens.concat(char) if index.even?
        odds.concat(char) if index.odd?
    end
    puts "#{evens} #{odds}"
end
