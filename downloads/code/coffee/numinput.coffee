$(document).ready ->
    $('input[type="text"].num').bind 'mousewheel', (ev, delta) ->
        ev.preventDefault()

        limit = (val) -> val
        if $(@).hasClass 'gte0'
            limit = (val) -> Math.max val, 0

        val = parseInt $(@).val(), 10
        val = 0 if isNaN val
        val = limit(val + delta)
        $(@).val(''+val).focus()

