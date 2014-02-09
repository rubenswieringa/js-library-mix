
define [ 'jQuery', 'rivets', 'views/view' ], ( $, rivets, View ) ->

  class LandingPage extends View
    constructor: ( data ) ->
      @element = $ 'body'
      rivets.bind @element, person: data, i18n: {}
      # @header = @embed "_header.html.erb"

