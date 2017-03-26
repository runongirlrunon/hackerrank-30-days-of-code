#!/bin/ruby

N = gets.strip.to_i

# If N is odd, print "Weird"
# If N is even and in the inclusive range of 2 to 5, print "Not Weird"
# If N is even and in the inclusive range of 6 to 20, print "Weird"
# If N is even and greater than 20, print "Not Weird"

if ((N % 2) > 0)
    puts "Weird"
elsif N == 2 || N == 4
    puts "Not Weird"
elsif N % 2 == 0 && (6..20) === N
    puts "Weird"
elsif N % 2 == 0 && N > 20
    puts "Not Weird"
end
