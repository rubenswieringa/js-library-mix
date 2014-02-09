

require [ 'rivets' ], ( rivets ) ->
  rivets.adapters[':'] =
    subscribe: ( obj, keypath, callback ) ->
      obj.on 'change:' + keypath, callback

    unsubscribe: ( obj, keypath, callback ) ->
      obj.off 'change:' + keypath, callback

    read: ( obj, keypath ) ->
      return obj.get keypath

    publish: ( obj, keypath, value ) ->
      obj.set keypath, value

  # rivets.adapters['#'] =
  #   subscribe: ( obj, keypath, callback ) ->
  #     #

  #   unsubscribe: ( obj, keypath, callback ) ->
  #     #

  #   read: ( obj, keypath ) ->
  #     console?.log keypath
  #     return keypath

  #   publish: ( obj, keypath, value ) ->
  #     #
