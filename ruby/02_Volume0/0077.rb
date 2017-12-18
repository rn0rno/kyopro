#!/usr/bin/env ruby

while str = gets

  codes = str.scan(/@\d\S/)

  codes.each do |code|
    decry = code[2] * code[1].to_i
    str = str.gsub(code, decry)
  end

  puts str

end
