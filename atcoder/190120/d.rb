# 断念
# def point(ary)
#   x = ary.map { |k| k[:tt] }.uniq.size
#   sum = ary.map { |k| k[:dd] }.inject(:+)
#
#   x * x + sum
# end
#
# def candidate(tmp, sushis)
#   puts tmp
#   puts sushis
#   sushis - tmp
# end
#
# n, k = gets.chomp!.split(" ").map(&:to_i)
#
# sushis = []
# bests = nil
# n.times do
#   t, d = gets.chomp!.split(" ").map(&:to_i)
#   kk = { tt: t, dd: d }
#   sushis << kk
#   if bests.nil? || bests.first[:dd] < d
#     bests = [kk]
#   elsif bests.first[:dd] == d
#     bests << kk
#   end
# end
#
# @dps = Array.new(k, [])
# @dps[1] = bests
#
# 2.upto(k) do |i|
#   max = 0
#   @dps[i - 1].each do |dp|
#     tmp_sushis = candidate(dp, sushis)
#
#     mmax = 0
#     tmp_ary = nil
#     tmp_sushis.each do |sushi|
#       ddp = dp < sushi
#       if mmax < point(ddp)
#         tmp_ary = ddp
#       end
#     end
#
#     tmp_point = point(tmp_ary)
#     if max < tmp_point
#       @dps[i] = tmp_ary
#       max = tmp_point
#     elsif max == tmp_point
#       @dps[i] << tmp_ary
#     end
#   end
# end
#
#
# puts point(@ds[k])
