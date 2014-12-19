update = ->
  Meteor.call 'updateMenus', (error, result) ->
    console.log error, result

