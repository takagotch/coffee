$ ->
  $("div#canvas").dblclick (e) ->
    [x, y] = positionOfNewBlock(e)
    $.post '/blocks', block: { x: x, y: y }, (block_id) ->
      block = $("<img />").
        attr("src", "assets/rails.png").
	css(left: "#{x}px", top: "#{y}px").
	draggable(containment: "parent").
      $(e.target).append(block)

  $("div#canvas img").draggable(constanment: "parent").css(position: "absolute")

  $(document).on "dragstop", "div#canvas img", (e) ->
    block = $(e.target)
    blockId = block.data("blockId")
    x = parseInt("left")
    y = parseInt("top")
    $.ajax "/blocks/#{blockId}", type: "PUT", data: { block: { x: x, y: y } }

positionOfNewBlock = (e) ->
  canvas = $(e.target)
  x = e.pageX - canvas.position().left
  y = e.pageY - canvas.position().top
  [x, y]

