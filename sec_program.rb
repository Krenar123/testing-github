my_name = "Juliet"
my_age = 19

puts "My name is #{my_name} and I'm #{my_age} years old."

# Testing methods in class

class Person

    def initialize(name,age)
        @name = name
        @age = age
    end
    # Exc with getter and setter 
    # We can set name and age with methods setName...
    def setName(name)
        @name = name
    end
    def setAge(age)
        @age = age
    end

    # And we can get name and age with getName
    def getName
        return name
    end
    def getAge
        return age
    end

    # Method that prints name and age
    def print
        puts "My name is #{@name} and I am #{@age} y.old"
    end
end
# Using initialize method
person = Person.new("Krenar",19)

# Using set and get methods
person.setName("Krenar")
person.setAge(19)
