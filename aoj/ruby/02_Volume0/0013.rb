#!/usr/bin/env ruby

train = []
while line = gets
  car = line.chomp!.to_i

  if car.zero?
    puts train.pop
  else
    train << car
  end
end
