#!/usr/bin/env ruby

cls = {
  'light fly': 48.0,
  'fly': 51.0,
  'bantam': 54.0,
  'feather': 57.0,
  'light': 60.0,
  'light welter': 64.0,
  'welter': 69.0,
  'light middle': 75.0,
  'middle': 81.0,
  'light heavy': 91.0,
  'heavy': 151.0
}

while line = gets
  w = line.chomp!.to_f

  cls.each do |cl, max|
    if max >= w
      puts cl
      break
    end
  end
end
