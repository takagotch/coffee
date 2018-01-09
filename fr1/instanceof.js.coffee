#instanceof
class Animal
class Cat extends Animal
animal = new Animal
cat = new Cat
animal instanceof Animal #=> true
animal instanceof Cat    #=> false
cat    instanceof Animal #=> true
cat    instanceof Cat    #=> true
//.constructor
cat.constructor is Animal #=> false
cat.constructor is Cat    #=> true
//swithch && .constructor
switch instance.constructor
  when Cat then console.log 'this is cat!'
  when Dog then console.log 'this is dog!'
end
//extend
extend = (obj, mixin) ->
  obj[name] = method for name, method of mixin
  obj

class A
  constructor: ->
    @initialize?(arguments...)

  @extend: (obj) ->
    class extends A
      extend @::, obj
end
