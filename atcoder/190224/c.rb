# n, a, b, c = gets.chomp!.split(" ").map(&:to_i)
#
# l = []
# n.times do
#   l << gets.chomp!.to_i
# end
# l.sort!
#
# cost = 0
#
# pipe = [c, b, a]
#
# pipe.each do |kk|
#
#   if idx = l.index(kk)
#     l.delete(idx)
#   else
#     if kk < l.first
#       cost += (l.first - kk)
#       l.delete_at(0)
#     else
#     end
#   end
# end
