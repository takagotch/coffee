#Promise -> $.get()
fetch = -> new Promise (done) ->
  $.get().then done

#[1, 2, 3].reduce processWithSleep, Promise.resolve()
processWithSleep = (p, sleepTime) => new Promise (done) => p.then =>
  setTimeout ->
    console.log 'sleep time:', sleepTime
  , sleepTime

[100, 200, 300].reduce processWithSleep, Promise.resolve()



