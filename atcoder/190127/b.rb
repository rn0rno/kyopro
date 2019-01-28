n = gets.chomp!.to_i

ary = []

3.times do |i|
  gets.chomp!.split("").each_with_index do |k, idx|
    ary[idx] = [] if ary[idx].nil?
    ary[idx][i] = k
  end
end

puts ary.map{ |t| t.uniq.size - 1}.inject(:+)
