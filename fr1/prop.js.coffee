#({a, b, c})
callback = ({a, b, c}) -> console.log a * b * c

#optionA||B... 
class Parser
  parse: (content, {optionA, optionB = {}}) ->
  optionA ?= false
  optionC ?= false
end

#=>
class A
  f: =>
    setTimeout =>
      @a = 120
    , 100
end

#debugger
class A
  f: =>
    settimeout =>
      @a = 120
      debugger
    , 100
end

