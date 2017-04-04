def reverser
  words = yield.split
  result = words.first.reverse
  while words.length > 1
    result += ' '
    words.delete_at(0)
    result += words.first.reverse
  end
  result
end

def repeater(n = 1)
  n.times { yield }
end

def adder(n = 1)
  yield + n
end
