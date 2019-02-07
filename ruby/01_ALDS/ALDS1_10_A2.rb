a = gets.chomp!.to_i

class Fibonacci
  def exec(n)
    f = { 0 => 1, 1 => 1 }

    2.upto(n) do |i|
      f[i] = f[i-1] + f[i-2]
    end

    return f[n]
  end
end

puts Fibonacci.new.exec(a)

# 実行時間 メモリ   コード長
# 00:04 s	6860 KB	192 B
