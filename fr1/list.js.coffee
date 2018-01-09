class Foo
  constructor: (data) ->
    @a = data.a
    @b = data.b
    @c = data.c

foo = new Foo a: 1, b: 2, c: 3
foo.c

