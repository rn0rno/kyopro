def rec_dfs(len, _m, output)
  size = output.length
  if size == len
    puts output.join(' ')
    return
  end
  
  if size != 0
    t = output[size - 1]
  else
    t = 0
  end
  (_m-t).times do |i|
    tmp = output.dup
    tmp << t+i+1
    rec_dfs(len, _m, tmp)
  end
end

n, m = gets.split(" ").map(&:to_i)
rec_dfs(n, m, [])