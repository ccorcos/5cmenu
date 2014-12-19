@update = ->
  Meteor.call 'updateMenus', (error, result) ->
    console.log error, result


Template.registerHelper 'menuByName', (name) -> Menus.findOne({name:name})

pages = [ "Mudd","Pitzer","CMC","Frank","Oldenborg","Frary","Scripps"]

Swiper = new Swipe pages

Template.main.helpers
  Swiper: -> Swiper

Template.main.rendered = ->

  # initial page
  Swiper.setInitialPage("Mudd")


  positioning = (left, right, center) ->
    Tracker.autorun ->
      if Swiper.pageIs center
        Swiper.leftRight left, right

  numPages = pages.length
  for i in [0...numPages]
    left = pages[(i - 1 + numPages) % numPages]
    right = pages[(i + 1) % numPages]
    center = pages[i]
    positioning left, right, center
