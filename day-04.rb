class Person
    attr_accessor :age
    def initialize(initialAge)
        if initialAge < 0
            puts "Age is not valid, setting age to 0."
            @age = 0
        else
            @age = initialAge
        end
    end
    def amIOld()
        case @age
        when 0..12
            puts "You are young."
        when 13..17
            puts "You are a teenager."
        else
            puts "You are old."
        end

    end
    def yearPasses()
        @age += 1
    end
end

T=gets.to_i
for i in (1..T)do
    age=gets.to_i
    p=Person.new(age)
    p.amIOld()
    for j in (1..3)do
        p.yearPasses()
    end
    p.amIOld
  	puts ""
end 
