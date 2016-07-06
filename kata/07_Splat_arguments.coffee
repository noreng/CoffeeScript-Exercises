# Write a function that can return the smallest value of an array or the index of that value

min = (arr, toReturn) ->
  minimum = Math.min arr...
  if toReturn == 'index' then arr.indexOf minimum else minimum


# Test
console.log (min [1,2,3,4,5]) == 1
console.log (min [1,2,3,4,5], 'index') == 0