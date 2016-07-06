# Combine strings

# Like in ES6 template literals
combineNames = (firstName, lastName) -> "#{firstName} #{lastName}"

# with join
combineNames2 = (first, last) -> [first, last].join ' '

console.log (combineNames 'Norbert','Pozsonyi') == 'Norbert Pozsonyi'
console.log (combineNames2 'Norbert','Pozsonyi') == 'Norbert Pozsonyi'