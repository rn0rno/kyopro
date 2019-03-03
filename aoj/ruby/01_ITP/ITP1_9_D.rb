str = gets.chomp
q = gets.chomp.to_i

q.times do
  cmd, a, b, rp = gets.chomp.split
  a = a.to_i
  b = b.to_i

  case cmd
  when 'print'
    puts str[a..b]
  when 'reverse'
    str[a..b] = str[a..b].reverse
  when 'replace'
    str[a..b] = rp
  end
end
