// Generated by CoffeeScript 1.10.0
(function() {
  var summation;

  summation = function(num) {
    var i, results;
    return (function() {
      results = [];
      for (var i = 1; 1 <= num ? i <= num : i >= num; 1 <= num ? i++ : i--){ results.push(i); }
      return results;
    }).apply(this).reduce(function(p, n) {
      return p + n;
    });
  };

  console.log((summation(5)) === 15);

  console.log((summation(8)) === 36);

}).call(this);
