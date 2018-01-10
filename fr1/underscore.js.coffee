//#=>Foo
module.exports = class Foo
  constructor: ->
    #...
  method: ->

//atom
module.exports = 
class Foo
  constructor: ->
  #...

//class
funcA = ->
funcB = ->

module.exports = {
  funcA
  funcB
}

//bbjs
MyView = Backbone.View.extend
  initialize: ->
    _.bindAll()
    @render()

//bbjs class
class MyView extends Backbone.View
  initialize: ->
    @render()


