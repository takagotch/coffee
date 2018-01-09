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
//
var Extended = A.extend({
  initailize: function(){
    console.log('initialized');
  }
});
//
class Foo
  @getInstance: ->
    @_instance ?= new @ arguments...
end
//
class A 
  contructor: ->
    prop = null
    @getProp = -> prop
    @setProp = (val) -> prop = val
end
//
App = Views: {}, Models: {}
class App.Views.FooView extends App.Views.BaseView
  constructor: ->
    super
    FooView is this.construtor #=> true
end
//
class A
  construcot: ->
    @_prop = null

  getProp: -> @prop
  getProp: (val) -> @_prop = val
end


