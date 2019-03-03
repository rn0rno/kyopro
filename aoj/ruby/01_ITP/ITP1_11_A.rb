#!/usr/bin/env ruby
class Dice
  def initialize(d)
    @dices = d
  end

  def go_s
    @dices[0], @dices[1], @dices[5], @dices[4]  = @dices[4], @dices[0], @dices[1], @dices[5]
  end

  def go_e
    @dices[0], @dices[2], @dices[5], @dices[3]  = @dices[3], @dices[0], @dices[2], @dices[5]
  end

  def go_w
    @dices[0], @dices[2], @dices[5], @dices[3]  = @dices[2], @dices[5], @dices[3], @dices[0]
  end

  def go_n
    @dices[0], @dices[1], @dices[5], @dices[4]  = @dices[1], @dices[5], @dices[4], @dices[0]
  end

  def now
    @dices[0]
  end
end

dice = Dice.new(gets.chomp.split.map(&:to_i))

gets.chomp.each_char do |chr|
  case chr
  when 'W'
    dice.go_w
  when 'S'
    dice.go_s
  when 'E'
    dice.go_e
  when 'N'
    dice.go_n
  end
end
puts dice.now
