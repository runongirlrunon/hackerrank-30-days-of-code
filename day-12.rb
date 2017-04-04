class Person
	def initialize(firstName, lastName, id)
		@firstName = firstName
		@lastName = lastName
		@id = id
	end
	def printPerson()
		print("Name: ",@lastName , ", " + @firstName ,"\nID: " , @id)
	end
end

class Student < Person
    def initialize(firstName, lastName, id, scores)
        super(firstName, lastName, id)
        @scores = scores
    end

    def calculate
        average = @scores.reduce(:+) / @scores.size

        case average
        when 0..39
            'T'
        when 40..54
            'D'
        when 55..69
            'P'
        when 70..79
            'A'
        when 80..89
            'E'
        when 90..100
            'O'
        end
    end
end

input = gets.split()
firstName = input[0]
lastName = input[1]
id = input[2].to_i
numScores = gets.to_i
scores = gets.strip().split().map!(&:to_i)
s = Student.new(firstName, lastName, id, scores)
s.printPerson
print("\nGrade: " + s.calculate)
