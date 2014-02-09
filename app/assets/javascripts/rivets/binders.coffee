
require [ 'rivets' ], ( rivets ) ->
  rivets.binders.value.bind = ( element ) ->
    element = $ element
    element.on 'keyup', @publish
