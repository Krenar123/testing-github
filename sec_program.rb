# Testing methods in class

class Person
    def initialize(name, age)
        my_name = name
        my_age = age
    end

    # Exc with getter and setter 
    # We can set name and age with methods setName...
    def setName(name)
        my_name = name
    end

    def setAge(age)
        my_age = age
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
        puts "My name is #{my_name} and I am #{my_age} y.old"
    end

    # New method is added here 
    def newMet
        puts "Try to create a new branch and then push it back oto remote"
    end

end

# Using initialize method
person = Person.new.initialize("Krenar",19)

# Using set and get methods
person.setName("Tanja")
person.setAge(32)
# Trying this new method called newMet
person.newMet

# Sorry for changing var names, you were one step in front of me, I didn't know about instance variables than :)
# It doesnt matter, keep changing things, for better practice...

# Can you pull my other branch from remote? Because I can't yours for now. Or I should merge it first with master?