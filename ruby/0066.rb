#!/usr/bin/env ruby

# Tic Tac Toe
# http://judge.u-aizu.ac.jp/onlinejudge/description.jsp?id=0066

def identity?(a, b, c)
  [a, b, c].uniq.one? && a != 's'
end

while line = gets
  field = line.chomp!.split('')
  winner = nil

  # row
  winner = field[0] if identity?(field[0], field[1], field[2])
  winner = field[3] if identity?(field[3], field[4], field[5])
  winner = field[6] if identity?(field[6], field[7], field[8])

  # column
  winner = field[0] if identity?(field[0], field[3], field[6])
  winner = field[1] if identity?(field[1], field[4], field[7])
  winner = field[2] if identity?(field[2], field[5], field[8])

  # diag
  winner = field[0] if identity?(field[0], field[4], field[8])
  winner = field[2] if identity?(field[2], field[4], field[6])

  puts (winner.nil?) ? 'd' : winner
end
