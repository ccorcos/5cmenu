Meteor.subscribe 'menus'

@updateMenus = ->
  Meteor.call 'updateMenus', (error, result) ->
    console.log error, result


Template.registerHelper 'menuByName', (name) -> Menus.findOne({name:name})

pages = ["Mudd","Pitzer","CMC","Frank","Oldenborg","Frary","Scripps"]
numPages = pages.length

Swiper = new Swipe pages

Template.main.helpers
  Swiper: -> Swiper

Swiper.click 'menu', '.left', (e,t) ->
  Swiper.moveLeft()

Swiper.click 'menu', '.right', (e,t) ->
  Swiper.moveRight()

Template.main.rendered = ->

  # initial page
  Swiper.setInitialPage("Mudd")

  positioning = (left, right, center) ->
    Tracker.autorun ->
      if Swiper.pageIs center
        Swiper.leftRight left, right

  for i in [0...numPages]
    left = pages[(i - 1 + numPages) % numPages]
    right = pages[(i + 1) % numPages]
    center = pages[i]
    positioning left, right, center

Template.menu.rendered = ->
  self = this
  this.autorun (c) ->
    if self.data.meals?
      if self.data.meals.length is 2
        $(self.find('.meal')).addClass('sunday')
      else if self.data.meals.length is 3
        $(self.find('.meal')).removeClass('sunday')
      # c.stop()

stringEq = (a,b) -> a is b
nameIs = _.curry stringEq

Template.menu.helpers
  leftMenu: ->
    i = _.findIndex pages, nameIs(@name)
    left = pages[(i - 1 + numPages) % numPages]
    return left
  rightMenu: ->
    i = _.findIndex pages, nameIs(@name)
    right = pages[(i + 1) % numPages]
    return right

# Setup Google Analytics
Meteor.startup ->
  if Meteor.isCordova
    # initIOSGoogleAnalytics()
    window.analytics.startTrackerWithId('UA-57746708-3')
    trackView = -> window.analytics.trackView(Swiper.getPage())
    document.addEventListener("resume", trackView, false)
  else
    initWebGoogleAnalytics()
