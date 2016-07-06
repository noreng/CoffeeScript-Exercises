# Summation
# Find the summation of every number between 1 and num
summation = (num) -> [1..num].reduce (p, n) -> p + n

# Test
# CoffeeScript compiles == into the JavaScript === operator:
console.log (summation 5) == 15
console.log (summation 8) == 36