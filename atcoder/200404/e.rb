n, k, c = gets.chomp!.split(" ").map(&:to_i)
s = gets.chomp!.split("")

@sube = Array.new(n, 0)

def yutori(syukkin, aida, yotei, now)
  _now = now.dup
  _now2 = now.dup
  if syukkin == 0
    indexes = _now.map.with_index { |element, i| i if element == 'k' }.compact
    indexes.each do |i|
      @sube[i] += 1
    end
    return 1
  end

  if yotei.select{ |y| y == 'o' }.size < syukkin
    return 0
  end

  saisho = yotei.find_index('o')

  saisho.times do
    _now << 'x'
  end
  _now << 'k'
  aida.times do
    _now << 'x'
  end

  tsugi = (yotei.size < saisho + aida + 1) ? [] : yotei[(saisho+aida+1)..(-1)]

  _yotei = yotei[saisho..(-1)].dup
  _yotei[0] = 'x'
  saisho.times do
    _now2 << 'x'
  end

  return yutori(syukkin - 1, aida, tsugi, _now) + yutori(syukkin, aida, _yotei, _now2)
end

subete = yutori(k, c, s, [])

puts @sube.map.with_index { |element, i| i+1 if element == subete }.compact

# TLE
