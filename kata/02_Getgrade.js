// Generated by CoffeeScript 1.10.0
(function() {
  var getGrade;

  getGrade = function(s1, s2, s3) {
    var average, i, len, range, ranges;
    ranges = [
      {
        score: 90,
        grade: 'A'
      }, {
        score: 80,
        grade: 'B'
      }, {
        score: 70,
        grade: 'C'
      }, {
        score: 60,
        grade: 'D'
      }, {
        score: 0,
        grade: 'F'
      }
    ];
    average = (s1 + s2 + s3) / 3;
    for (i = 0, len = ranges.length; i < len; i++) {
      range = ranges[i];
      if (range.score <= average) {
        return range.grade;
      }
    }
  };

  console.log((getGrade(65, 70, 59)) === 'D');

}).call(this);
