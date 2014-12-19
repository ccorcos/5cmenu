update = ->
  Meteor.call 'updateMenus', (error, result) ->
    console.log error, result

Template.main.helpers
  menus: () ->
    Menus.find()