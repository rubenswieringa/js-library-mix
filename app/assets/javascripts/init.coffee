
require.config
  paths:
    'rivets': 'rivets.min',
    'rivets.binders': 'rivets/binders',
    'rivets.backbone': 'rivets/backbone',
    'jQuery': 'jquery-2.0.3.min',
    'underscore': 'underscore-min',
    'Backbone': 'backbone-min'
  shim:
    'rivets': { exports: 'rivets' },
    'rivets.binders': { exports: 'binders', deps: [ 'rivets', 'jQuery' ]},
    'rivets.backbone': { exports: 'rvbb', deps: [ 'rivets' ]},
    'jQuery': { exports: '$' },
    'underscore': { exports: '_' },
    'Backbone': { exports: 'Backbone', deps: [ 'underscore', 'jQuery' ]}

require [ 'rivets.backbone', 'rivets.binders', 'views/landing_page', 'models/person' ], ( rvbb, binders, LandingPage, PersonModel ) ->
  person = new PersonModel id: 1
  view = new LandingPage person
  person.fetch()