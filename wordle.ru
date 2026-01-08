require 'json'

data = File.read('words.json')
word = JSON.parse(data).sample.upcase

# word = 'MOONS'

keys = "QWERTYUIOPASDFGHJKLZXCVBNM"
typed = Array.new(keys.length)

# puts word

target = word.split('')

# puts target.inspect

# puts target[0]

guesses = Array.new(6)  
exit = false
ends = false
accept = false

input = ""

while exit == false

    if exit == false
        guesses.each_with_index do |guess, index|
            if guess.nil?
                # puts word
                puts "....."
            else
                guess.split('').each_with_index do |char, i|
                    if char.include?(target[i])
                        print "\e[32m#{char}\e[0m"
                    elsif target.include?(char)
                        print "\e[33m#{char}\e[0m"
                    else
                        print "\e[31m#{char}\e[0m"
                    end
                end

                puts ''
            end
        end

        puts ''
        
        keys.split('').each_with_index do |k, i|
            # start a new row before A and Z 
            if k == "A" || k == "Z"
                puts ''
            end

            if typed.include?(k) && target.include?(k)
                print "\e[32m[#{k}]\e[0m"
            elsif typed.include?(k) && !target.include?(k)
                print "\e[31m[#{k}]\e[0m"
            else
                print "[#{k}]"
            end

        end
   
        
        puts ''
        puts ''

        puts 'RED == Letter is not in the word and already typed'
        puts 'GREEN == Letter is in the correct position and already typed'
        puts 'YELLOW == Letter is in the word but in the wrong position'

        puts '' 

        # Harus mengulang kalau panjang input tidak sama dengan panjang target
        accept = false

        puts ''
        puts "Enter your guess: "
        input = gets.chomp.upcase
        puts ''

        if input.length != target.length
            puts "Your guess must be #{target.length} letters long."
        
        elsif guesses.include?(input)
            puts "You already guessed that!"
            
        else
            guesses[guesses.index(nil)] = input
            
        end

        keys.split('').each_with_index do |k, i|
            if input.include?(k) && typed[i] == nil && input.length == target.length
                typed[i] = k
                accept = true
            end
        end

        if guesses.include?(word)
            puts "Congratulations! You guessed the word \e[32m#{word}\e[0m!"
            ends = true
        elsif guesses.include?(nil) == false
            puts "Sorry, you've used all your guesses. The word was #{word}."
            ends = true
        end

        if ends == true
            puts "Do you want to play again? (Y/N)"
            again = gets.chomp.upcase
            while again != 'Y' and again != 'N' and again != 'YES' and again != 'NO' and again != 'y' and again != 'n' and again != 'yes' and again != 'no'
                puts "Please enter Y or N."
                again = gets.chomp.upcase
            end
            if again == 'Y' or again == 'YES' or again == 'y' or again == 'yes' 
                word = JSON.parse(data).sample.upcase
                target = word.split('')
                guesses = Array.new(6)
                ends = false
                accept = false
                typed = Array.new(keys.length)
            else
                exit = true
            end
        end    
    end
end


