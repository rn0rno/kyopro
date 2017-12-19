def bubble(ary)
  flg = true
  n = ary.length

  while flg
    flg = false
    (n - 1).downto(1) do |i|
      next if ary[i][1].to_i >= ary[i - 1][1].to_i
      ary[i], ary[i - 1] = ary[i - 1], ary[i]
      flg = true
    end
  end

  ary
end

def selection(ary)
  n = ary.size

  n.times do |i|
    minj = i
    i.upto(n - 1) do |j|
      minj = j if ary[minj][1].to_i > ary[j][1].to_i
    end
    ary[i], ary[minj] = ary[minj], ary[i]
  end

  ary
end

gets

input = gets.chomp.split

b_ary = bubble(input.dup)
s_ary = selection(input.dup)

puts b_ary * ' ', 'Stable', s_ary* ' '
puts b_ary == s_ary ? 'Stable' : 'Not stable'
