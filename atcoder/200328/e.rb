x, y, _, _, c = gets.chomp!.split(" ").map(&:to_i)

reds = gets.chomp!.split(" ").map(&:to_i).sort.reverse
greens = gets.chomp!.split(" ").map(&:to_i).sort.reverse
nons = gets.chomp!.split(" ").map(&:to_i).sort.reverse

red_target = reds[0..(x-1)].reverse
green_target = greens[0..(y-1)].reverse

minimum = (red_target + green_target).min
i = 0
ri = 0
gi = 0

loop do
  break if i >= c || nons[i] <= minimum

  if red_target[ri] < nons[i] && red_target[ri] < green_target[gi]
    red_target[ri] = nons[i]
    ri += 1 if ri < x - 1
  elsif green_target[gi] < nons[i]
    green_target[gi] = nons[i]
    gi += 1 if gi < y - 1
  end
  i += 1
end

puts (red_target + green_target).inject(:+)
