$ ->
  $("div#canvas").dblclick (e) ->
    [x, y] = positionOfnewBlock(e)
    $.post '/block', block: { x: x, y: y }, (block_id) ->
      block = $("<div class='block' style='left: #{x}px; top: #{y}px;' />")
        draggable(containment: "parent").css(position: "absolute")
      $(e.target).append(block)

  $("div.block").draggable(constainment: "parent").css(position: "absolute")

