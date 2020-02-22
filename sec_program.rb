class Person
    def initialize(name, age)
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
        return @name
    end
    def getAge
        return @age
    end

    # Method that prints name and age
    def print
        puts "My name is #{@name} and I am #{@age} y.old"
    end

    # New method is added here 
    def newMet
        puts "Try to create a new branch and then push it back to remote"
    end

end

# Using initialize method
person = Person.new("Krenar",19)

# Using get methods
puts "The person's name is: #{person.getName} and the person's age is: #{person.getAge}"

# Using set methods
person.setName("Tanja")
person.setAge("32")

# Using get methods
puts "The person's name is: #{person.getName} and the person's age is: #{person.getAge}"

# Trying this new method called newMet
person.newMet


