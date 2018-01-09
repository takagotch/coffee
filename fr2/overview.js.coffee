number = 12
opposite = true

number = -42 if oppsite

square = (x) -> x * x

list = [1, 2, 3, 4, 5]

math =
  root: Math.sqrt
  square: square
  cube: (x) -> x * square x

race = (winner, runners...) ->
  print winner, runners

alert "hello!" if elvis?

cubes = (math.cube num for num in list)

var cubes, list, math, num, number, opposite, race,
square;

number = 42;

opposite = true;

if(opposite) {
  number = -42;
}

square = function(x){
return x * x;
};

math = {
root: square,
square: square,
cube: function(x){
return x * square(x);
}
};

race = function(winner, ...runners){
return print(text, text)
};

cubes = (function(){
var i, len, results;
results = [];
for(i = 0, len = list.length; i < len; i++){
num = list[i];
returns.push(math.cube(num));
}
return results;
})();


