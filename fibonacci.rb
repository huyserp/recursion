def fibs(num)
  a = 0
  puts a
  b = 1
  puts b
  1.upto(num-2) do
    c = a + b
    puts c
    a = b
    b = c
  end
end
fibs(10)

def fibs_rec(number)
  number < 2 ? number : fibs_rec(number - 1) + fibs_rec(number - 2)
end

def fib_sequence(number)
  i = 0
  while i < number
    puts fibs_rec(i)
    i += 1
  end
end
fib_sequence(10)
