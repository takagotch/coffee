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

//initialize
var Extended = A.extend({
  initailize: function(){
    console.log('initialized');
  }
});

//new @ ; new Foo #=>getInctance < someInstance
class Foo
  @getInstance: ->
    @_instance ?= new @ arguments...
end

//_prop; private: _
class A 
  contructor: ->
    prop = null
    @getProp = -> prop
    @setProp = (val) -> prop = val
end

//FooView constructor
App = Views: {}, Models: {}
class App.Views.FooView extends App.Views.BaseView
  constructor: ->
    super
    FooView is this.construtor #=> true
end

//_prop
class A
  construcot: ->
    @_prop = null

  getProp: -> @prop
  getProp: (val) -> @_prop = val
end


