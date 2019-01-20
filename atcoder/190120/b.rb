# 2019-01-20 21:13:17
# AC
def f(x)
  if x.even?
    x / 2
  else
    3 * x + 1
  end
end

ans = gets.chomp!.to_i

a = [ans]

2.upto(1_000_000) do |i|
  ans = f(ans)
  if a.include?(ans)
    puts i
    break
  else
    a << ans
  end
end
