def factorial(number)
    if number == 1
        return number
    else
        return number * factorial(number - 1)
    end
end

input = STDIN.gets.to_i

puts factorial(input)
