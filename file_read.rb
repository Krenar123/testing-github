count =0 # A counter to count how many words are in text file
text = [] # Array that will take all owrds one by one
start = 0 # Variable for manipulation with words
File.open("file.txt").each do |line| # This will go line by line in out txt file
    
    for i in 0..line.size-1 do # Char by char in that line --  a[0], a[1] a[2] ... 

        if line[i] == " " # If there is empty space it means we can count one word
            text << line[start..i-1] # Starting from 0 to that space a[5] save that as one word 
            count += 1 # increment count
            start = i+1 # Make the start point to a[5+1]
        end
    end
end
puts text.join(' ')
puts count
# Another easy way is: 
File.open('file.txt').each do |line|
    puts "Another way of length:  #{line.scan(/\w+/).length}"
    puts "Another way of length:  #{line.split.length-1}"
    puts "Another way:  #{line.scan(/\w+/)}"
end

files = File.readlines('file.txt')
dont_include = %w{I new lines line code can} # These words wont be included
w = files.join
w = w.scan(/\w+/)

words = w.select { |word| !dont_include.include?(word)}

puts words.join(' ')
