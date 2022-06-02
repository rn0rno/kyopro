s = gets.split()

o = ""
k = 0
tpc = ""

s.each do |c|
    if tpc != c
        if tpc != ""
            o += "#{tpc}#{k}"
            k = 0
            tpc = c
        end
        k += 1
    end
end

puts o