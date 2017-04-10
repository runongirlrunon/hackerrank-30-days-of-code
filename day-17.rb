class RangeError < StandardError
end

# my code start
class Calculator
    def power(first, second)
        if first.negative? || second.negative?
            raise RangeError, "n and p should be non-negative"
        end
        first**second
    end
end
# my code end

myCalculator = Calculator.new()

t = gets.to_i

for i in 1..t
    n, p = gets.split.map(&:to_i)
    begin
        ans = myCalculator.power(n, p)
        puts ans.to_i
    rescue RangeError => e
        puts e.message
    end
end
