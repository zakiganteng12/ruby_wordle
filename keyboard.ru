# puts '[Q][W][E][R][T][Y][U][I][O][P]'
# puts ' [A][S][D][F][G][H][J][K][L] '
# puts '  [Z][X][C][V][B][N][M]  '

# keys1 = "QWERTYUIOP"
# keys2 = "ASDFGHJKL"
# keys3 = "ZXCVBNM"

# keysArray1 = keys1.split('')
# keysArray2 = keys2.split('')
# keysArray3 = keys3.split('')

keys = "QWERTYUIOPASDFGHJKLZXCVBNM"
typed = Array.new(keys.length)
# puts keys.split('').inspect

char = 'MONKE'
word = 'MOONS'
target = word.split('')

char.split('').each_with_index do |c, i|
    if c == target[i]
        print "\e[32m#{c}\e[0m"
    elsif target.include?(c)
        print "\e[33m#{c}\e[0m"
    else
        print "\e[37m#{c}\e[0m"
    end
end

puts ''

keys.split('').each_with_index do |k, i|
    if char.include?(k) && typed[i] == nil
        typed[i] = k
    end
end

keys.split('').each_with_index do |k, i|
    # start a new row before A and Z instead of printing the key twice
    if k == "A" || k == "Z"
        puts ''
    end

    if char.include?(k)
        print "\e[32m[#{k}]\e[0m"
    else
        print "[#{k}]"
    end

end
# puts typed.inspect
