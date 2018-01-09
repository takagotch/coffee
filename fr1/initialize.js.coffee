class Foo
  constrctor: () ->
    @a = data.a
    @b = data.b
    @c = data.c
end

foo = new Foo a: 1, b: 2, c: 3
foo.c #=> 3

//
class Foo
  constructor: ({@a, @b, @c}) ->

foo = new Foo a: 1, b: 2, c: 3
foo.b #=> 2


