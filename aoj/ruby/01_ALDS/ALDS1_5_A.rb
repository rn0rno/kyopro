#!/usr/bin/env ruby
@ans = []

def k(sum, ary)
  return 0 if ary.count.zero?

  tmp = ary.pop
  @ans << (sum + tmp + k(sum + tmp, ary.dup))
  @ans << (sum + k(sum, ary.dup))

  0
end

gets
a = gets.split.map(&:to_i)
gets
m = gets.split.map(&:to_i)

k(0, a)

@ans.uniq!.sort!

m.each do |k|
  puts (@ans.include?(k)) ? 'yes' : 'no'
end


# @todo 高速化できそう
