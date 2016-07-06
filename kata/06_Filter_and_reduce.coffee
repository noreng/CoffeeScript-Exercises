# You get an array of numbers, return the sum of all of the positives ones

positiveSum = (arr) ->
  reduceCallback = (memo, curr) ->
    memo + (if curr > 0 then curr else 0)
  arr.reduce reduceCallback, 0

positiveSum2 = (arr) ->
  arr.filter((e) -> e > 0).reduce (m, c) -> m + c;

console.log (positiveSum [1,2,3,4,5]) == 15
console.log (positiveSum [-1,2,3,4,-5]) == 9

console.log (positiveSum2 [1,2,3,4,5]) == 15
console.log (positiveSum2 [-1,2,3,4,-5]) == 9
        
