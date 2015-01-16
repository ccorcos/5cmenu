Meteor.publish 'menus', -> Menus.find()

@Record = new Mongo.Collection 'record'

updateMenus = ->
	menuString = ""

	if false
		menuString = offlineMenu()
	else
		result = Meteor.http.get("https://aspc.pomona.edu/menu/", {timeout:30000})

		if result?.statusCode isnt 200
			return false

		menuString = result.content

	# cheerio = Meteor.npmRequire("cheerio")

	$ = cheerio.load(menuString)

	meals = $("#meal_header>th").toArray().map((x) -> $(x).text())[1..]

	menuIds  = ['mudd_menu'
							'pitzer_menu'
							'scripps_menu'
							'cmc_menu'
							'frary_menu'
							'frank_menu'
							'oldenborg_menu']

	names =
	  'frank_menu': "Frank"
	  'frary_menu': "Frary"
	  'oldenborg_menu': "Oldenborg"
	  'cmc_menu': "CMC"
	  'scripps_menu': "Scripps"
	  'pitzer_menu': "Pitzer"
	  'mudd_menu': "Mudd"

	parseMenu = (menuId) ->
	  menu = {}
	  menu.name = names[menuId]
	  menu.link = $("tr##{menuId}").find('a').attr('href')
	  foods = $("tr##{menuId}>td").toArray().map((x) -> _.flatten($(x).find('ul').children().toArray().map((x) -> $(x).text().split(','))).map( (x) -> _.trim x))
	  menu.meals = _.map [0...meals.length], (i) -> {name:meals[i], food: foods[i]}
	  return menu

	for menuId in menuIds
		menu = parseMenu(menuId)
		menu.date = Date.now()
		Menus.upsert {name:menu.name}, menu

	return true

Meteor.methods
	'updateMenus': ->
		date = Menus.findOne()?.date
		if date
			if Date.now() - date > 3600000
				updateMenus()
		else
			updateMenus()

Meteor.startup ->
	if Menus.find().count() is 0
		updateMenus()
