a = gets.chomp!.to_i

class Fibonacci
  def initialize
    @F = {0=> 1, 1=> 1}
  end

  def exec(n)
    return @F[n] unless @F[n].nil?

    return 1 if n.zero?
    return 1 if n == 1
    @F[n] = exec(n - 1) + exec(n - 2)
  end
end

puts Fibonacci.new.exec(a)

# 実行時間 メモリ   コード長
# 00:04 s	6868 KB	258 B
