n = gets.strip.to_i
binary = n.to_s(2)
maxLength = 0

binary.split("0").each do |section|
    maxLength = section.length if section.length > maxLength
end

puts maxLength
