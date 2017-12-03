#!/usr/bin/env ruby

def mapping(lat, lon)
  # 探索済みにする
  @map[lat][lon] = -1

  # 上下左右の探索
  mapping(lat, lon - 1) if lon > 0 && @map[lat][lon - 1] == 1
  mapping(lat, lon + 1) if lon < 11 && @map[lat][lon + 1] == 1
  mapping(lat - 1, lon) if lat > 0 && @map[lat - 1][lon] == 1
  mapping(lat + 1, lon) if lat < 11 && @map[lat + 1][lon] == 1

  1
end

loop do
  @map = []
  cnt = 0

  12.times do |i|
    @map[i] = gets.chomp!.split('').map(&:to_i)
  end

  12.times do |lon|
    12.times do |lat|
      cnt += mapping(lat, lon) if @map[lat][lon] == 1
    end
  end

  puts cnt

  # 終了判定
  break unless gets
end
