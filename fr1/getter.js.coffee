//{get prop: ..., set prop: ...}
//Object.defineProperty
property = (obj, key, {get, set}) ->
  Object.defineProperty obj, key, {get, set}

class A
  property @::, 'prop',
    get: ->
      console.log 'get prop'
      @_prop

    set: (val) ->
      console.log 'set prop with', val
      @_prop = val

a = new A
a.prop = 3 #set prop with 3
a.prop     #get prop

//update()
update = ->
  setTimeout ->
    #
    update()
  , 1000
update()


