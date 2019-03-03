#!/usr/bin/env ruby

def mergesort lst
  _mergesort_ lst.dup
end

def _mergesort_ lst
  return lst if (len = lst.size) <= 1
  lst2 = lst.pop(len >> 1)

  _merge_(_mergesort_(lst), _mergesort_(lst2))
end

def _merge_ lst1, lst2
  len1, len2 = lst1.size, lst2.size
  result = Array.new(len1 + len2)
  a, b = lst1[0], lst2[0]
  i, j, k = 0, 0, 0
  loop do
    @cnt += 1
    if a <= b
      result[i] = a
      i += 1
      j += 1
      break unless j < len1
      a = lst1[j]
    else
      result[i] = b
      i += 1
      k += 1
      break unless k < len2
      b = lst2[k]
    end
  end
  while j < len1
    result[i] = lst1[j]
    i += 1
    j += 1
    @cnt += 1
  end
  while k < len2
    result[i] = lst2[k]
    i += 1
    k += 1
    @cnt += 1
  end
  result
end

gets
a = gets.split.map(&:to_i)

@cnt = 0
puts mergesort(a).join(' ')
puts @cnt
