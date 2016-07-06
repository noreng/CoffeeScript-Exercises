# Get grade
# finds the mean of the three scores passed to it
# and returns the letter value associated with that grade

getGrade = (s1, s2, s3) ->
    ranges = [
        {score: 90, grade: 'A'},
        {score: 80, grade: 'B'},
        {score: 70, grade: 'C'},
        {score: 60, grade: 'D'},
        {score: 0, grade: 'F'},
    ]
    average = (s1 + s2 + s3) / 3
    for range in ranges
        if range.score <= average
            return range.grade
 
# Test
console.log (getGrade 65, 70, 59) == 'D'