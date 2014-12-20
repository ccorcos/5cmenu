@updateMenus = ->
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

Template.menu.rendered = ->
  if this.data.meals?.length is 2
    $(@find('.meal')).addClass('sunday')


# Setup Google Analytics
Meteor.startup ->
  if Meteor.isCordova
    # initIOSGoogleAnalytics()  
    window.analytics.startTrackerWithId('UA-57746708-3')
    trackView = -> window.analytics.trackView(Swiper.getPage())
    document.addEventListener("resume", trackView, false)
  else
    initWebGoogleAnalytics()