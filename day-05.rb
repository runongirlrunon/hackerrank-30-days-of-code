#!/bin/ruby

n = gets.strip.to_i

(1..10).each do |multiplier|
    puts "#{n} x #{multiplier} = #{n * multiplier}"
end
