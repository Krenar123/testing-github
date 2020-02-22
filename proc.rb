# The easiest way is to write proc
pr  = proc {|i| puts "Hello #{i}" }

pr.call
pr.call("Krenar")

# The original way is to write Proc.new

pr_1 = Proc.new {|val| puts val = val!=nil ? val : "Nil"}

pr_1.call(2)
pr_1.call

# Another way explaining yield 

def yes
    var = block_given? ? yield : "No block given"
    puts var
end
yes {"This is with yield: Krenar"}

# The primitive way is by using &proc as parameter

def yes_2(&proc)
    proc.call
end

yes {"This is with &proc: KRENAR"}
