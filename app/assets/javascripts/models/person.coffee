
define [ 'Backbone' ], ( Backbone ) ->
  return Backbone.Model.extend
    url: -> '/people/' + @get( 'id' )
