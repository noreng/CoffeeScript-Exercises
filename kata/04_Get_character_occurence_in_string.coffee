getCharacterOccurenceInString = (char, str) ->
    regExp = new RegExp char, 'g'
    (str.match(regExp) || []).length
  
console.log (getCharacterOccurenceInString 'a', 'anna') == 2
console.log (getCharacterOccurenceInString 'a', 'Anna') == 1
console.log (getCharacterOccurenceInString 'b', 'anna') == 0
