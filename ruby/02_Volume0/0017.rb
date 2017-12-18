#!/usr/bin/env ruby
while line = gets
  sentence = line.chomp!

  alphs = ('a'..'z').to_a
  reserves = ['this', 'the', 'that']

  26.times do |n|
    pros = ''
    sentence.chars do |chr|
      if alphs.include?(chr)
        index = (alphs.index(chr) + n) % alphs.length
        pros << alphs[index]
      else
        pros << chr
      end
    end
    if Regexp.union(reserves) =~ pros
      puts pros
      break
    end
  end
end
