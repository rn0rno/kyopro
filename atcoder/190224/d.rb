a, b, q = gets.chomp!.split(" ").map(&:to_i)

s = []
a.times do
  s << gets.chomp!.to_i
end

t = []
b.times do
  t << gets.chomp!.to_i
end



q.times do
  x = gets.chomp!.to_i
  _ss = s.map{ |ss| x - ss }
  s_fu = _ss.select(&:negative?).max
  s_sei= _ss.select(&:positive?).min

  _tt = t.map{ |tt| x - tt }
  t_fu = _tt.select(&:negative?).max
  t_sei= _tt.select(&:positive?).min


  pp = []
  unless s_fu.nil? || t_fu.nil?
    pp << [s_fu.abs, t_fu.abs].max
  end

  unless s_sei.nil? || t_sei.nil?
    pp << [s_sei, t_sei].max
  end

  unless s_fu.nil? || t_sei.nil?
    _p3 = [s_fu.abs, t_sei].sort
    pp << _p3[0] * 2 + _p3[1]
  end

  unless s_sei.nil? || t_fu.nil?
    _p4 = [s_sei, t_fu.abs].sort
    pp << _p4[0] * 2 + _p4[1]
  end

  puts pp.min
end
