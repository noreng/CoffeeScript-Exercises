# compare two arrays
# same means: the elements in b are the elements in a squared,
# regardless of the order.

# Conditional operators: is, not, isnt
# elem 'in' array

comp = (array1, array2) ->
  return false if (not Array.isArray array1) or (not Array.isArray array2) # not
  return false if array1.length isnt array2.length # isnt
  not array1.some (num, i) -> 
    num * num not in array2 or (Math.sqrt array2[i]) not in array1


# same
a1 = [121, 144, 19, 161, 19, 144, 19, 11]
a2 = [11 * 11, 121 * 121, 144 * 144, 19 * 19, 161 * 161, 19 * 19, 144 * 144, 19 * 19]

# different
a3 = [121, 144, 19, 161, 19, 144, 19, 11]
a4 = [11 * 9999999, 121 * 121, 144 * 144, 19 * 19, 161 * 161, 19 * 19, 144 * 144, 19 * 19]

# is
console.log (comp a1, a2) is true
console.log (comp a3, a4) is false
console.log (comp [], null) is false
console.log (comp [], []) is true