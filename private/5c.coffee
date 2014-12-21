_ = require 'lodash'
cheerio = require 'cheerio'
str = require 'underscore.string'
_.mixin str.exports()

menuString = """
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8" />
    <title>ASPC &mdash; 5C Menu</title>
    <link rel="stylesheet" href="https://aspc.pomona.edu/static/css/styles.css" type="text/css" media="screen">
    <!--[if lt IE 9]>
    <script src="//html5shim.googlecode.com/svn/trunk/html5.js"></script>
    <![endif]-->
    <meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no">
    <link rel="apple-touch-icon-precomposed" href="https://aspc.pomona.edu/static/css/images/apple_icons/touch-icon-iphone.png" />
    <link rel="apple-touch-icon-precomposed" sizes="72x72" href="https://aspc.pomona.edu/static/css/images/apple_icons/touch-icon-ipad.png" />
    <link rel="apple-touch-icon-precomposed" sizes="114x114" href="https://aspc.pomona.edu/static/css/images/apple_icons/touch-icon-iphone4.png" />
    <link rel="shortcut icon" href="https://aspc.pomona.edu/static/css/images/favicon.ico" />
<meta name="description" content="Meal information for the 5C dining halls.">
<meta property="og:type" content="website">
<meta property="og:image" content="http://aspc.pomona.edu/static/css/images/apple_icons/touch-icon-iphone4.png">
<meta property="og:url" content="https://aspc.pomona.edu/menu/">
<meta property="og:site_name" content="ASPC - 5C Menu">
<meta property="fb:page_id" content="171112626308633">
<meta property="og:description" content="Meal information for the 5C dining halls.">
    <script type="text/javascript">

  var _gaq = _gaq || [];
  _gaq.push(['_setAccount', 'UA-25778331-1']);
  _gaq.push(['_trackPageview']);

  (function() {
    var ga = document.createElement('script'); ga.type = 'text/javascript'; ga.async = true;
    ga.src = ('https:' == document.location.protocol ? 'https://ssl' : 'http://www') + '.google-analytics.com/ga.js';
    var s = document.getElementsByTagName('script')[0]; s.parentNode.insertBefore(ga, s);
  })();

</script>
    
<link rel="stylesheet" href="https://aspc.pomona.edu/static/css/menu.css" type="text/css">

  </head>
  <body class="">
  <header id="aspc_main" class="container">
    <hgroup class="row">
      <h1><a href="/">ASPC</a></h1>
      <h2><a href="/">Associated Students of Pomona College</a></h2>
      <a id="logo" href="/"></a>
<div class="loginstatus">

 <form action="/accounts/login/" method="POST">
   <input type='hidden' name='csrfmiddlewaretoken' value='xtW77lBLucQkGfILddKKQMxWPO40qHgd' />
  <input type="text" name="username" placeholder="username">
  <input type="password" name="password" placeholder="password">
  <!-- <select name="college" id="college">
    <option selected value="PO">Pomona</option>
    <option value="CMC">CMC</option>
    <option value="PZ">Pitzer</option>
    <option value="HMC">Mudd</option>
    <option value="SCR">Scripps</option>
  </select> -->
  <input type="submit" value="Log In">
</form>

</div>
      <!-- <form>
        <input type="text" name="q" placeholder="search ASPC">
      </form> -->
    </hgroup>
  </header>
  
  <div class="container">
  <div id="content_main" class="row"> 
    
    
<section class="group primary ">
  
    
    
  
    <h1>
<span id="desktop_page_title">5C Menu: Week of December 15 to December 21</span>
<span id="mobile_page_title">5C Menu: Thursday, December 18</span>
</h1>
  
    
    
  
    
    
  
    

<table id="day_nav">
  <tr>
    <th ><a href="/menu/mon">Monday</a></th>
    <th ><a href="/menu/tue">Tuesday</a></th>
    <th ><a href="/menu/wed">Wednesday</a></th>
    <th  class="active" ><a href="/menu/thu">Thursday</a></th>
    <th ><a href="/menu/fri">Friday</a></th>
    <th ><a href="/menu/sat">Saturday</a></th>
    <th ><a href="/menu/sun">Sunday</a></th>
  </tr>
</table>
<table id="dining_hall_nav">
  <tr>
    <th class="pomona_background"><a href="#frank_menu">
      <span class="long_name">Frank</span>
      <span class="short_name">FK</span>
    </a></th>
    <th class="pomona_background"><a href="#frary_menu">
      <span class="long_name">Frary</span>
      <span class="short_name">FR</span>
    </a></th>
    
      <th class="pomona_background"><a href="#oldenborg_menu">
        <span class="long_name">Oldenborg</span>
        <span class="short_name">OLD</span>
      </a></th>
    
    <th class="cmc_background"><a href="#cmc_menu">
      CMC
    </a></th>
    <th class="scripps_background"><a href="#scripps_menu">
      <span class="long_name">Scripps</span>
      <span class="short_name">SC</span>
    </a></th>
    <th class="pitzer_background"><a href="#pitzer_menu">
      <span class="long_name">Pitzer</span>
      <span class="short_name">PZ</span>
    </a></th>
    <th class="mudd_background"><a href="#mudd_menu">
      <span class="long_name">Mudd</span>
      <span class="short_name">HM</span>
    </a></th>
  </tr>
</table>

<table id="menu_table">
  <tr id="meal_header">
    <th>Location</th>
    <th>Breakfast</th>
    <th>Lunch</th>
    <th>Dinner</th>
  </tr>
  <tr id="frank_menu">
    <th class="pomona_background"><a href="http://www.pomona.edu/administration/dining/menus/frank.aspx" target="_blank">Frank</a></th>
    <td>
      <span class="mobile_meal_header">Breakfast</span>
      <ul>
        
          
            <li>Bacon</li>
          
            <li> Vegan Sausage</li>
          
            <li> Hash Brown Potatoes</li>
          
            <li> Tofu &amp; Apple Sausage Scramble</li>
          
            <li> Hard Boiled Eggs</li>
          
            <li> Scrambled Eggs</li>
          
            <li> Scrambled Egg Whites</li>
          
            <li> Breakfast Special: Breakfast Burrito: Flour Tortilla</li>
          
            <li> Scrambled Eggs</li>
          
            <li> Sausage</li>
          
            <li> Potatoes</li>
          
            <li> Cheese</li>
          
            <li>Omelet Bar</li>
          
            <li>Breakfast Smoothies</li>
          
            <li>Made To Order: Eggs</li>
          
            <li> Buttermilk Pancakes &amp; Cinnamon French Toast</li>
          
            <li> Topping Bar Make Your Own Belgian Waffle</li>
          
            <li>Oatmeal with Assorted Toppings: Brown Sugar</li>
          
            <li> Raisins</li>
          
            <li> Cinnamon Sugar</li>
          
            <li> Banana Chips</li>
          
            <li> Golden Raisins</li>
          
            <li> Chocolate Chips</li>
          
            <li>Bagel</li>
          
            <li> Fruit &amp; Yogurt Bar</li>
          
            <li> Frank&#39;s Granola</li>
          
            <li> Breakfast Muesli</li>
          
            <li> Smoothies</li>
          
        
      </ul>
    </td>
    <td>
      <span class="mobile_meal_header">Lunch</span>
      <ul>
        
          
            <li>Kung Pao Chicken Wraps</li>
          
            <li> Broccoli Beef</li>
          
            <li> Mushu Seitan &amp; Mushrooms</li>
          
            <li> Steamed Rice</li>
          
            <li> Noodles</li>
          
            <li> Spring Rolls</li>
          
            <li> Tofu-Vegetable Stir Fry</li>
          
            <li>Cheese</li>
          
            <li> Sour Cream</li>
          
            <li> Apple</li>
          
            <li> Pecan &amp; White Chocolate Pizza</li>
          
            <li> Pepperoni</li>
          
            <li>Chicken &amp; Noodle</li>
          
            <li>Fresh Fruit</li>
          
        
      </ul>
    </td>
    <td>
      <span class="mobile_meal_header">Dinner</span>
      <ul>
        
          
            <li>Hamburgers</li>
          
            <li> Cheeseburgers</li>
          
            <li> Garden Burgers</li>
          
            <li> Bacon</li>
          
            <li> Chili</li>
          
            <li> Grilled Onions &amp; Mushrooms</li>
          
            <li> French Fries</li>
          
            <li> Onion Rings</li>
          
            <li> Lettuce</li>
          
            <li> Tomato</li>
          
            <li> Red Onions</li>
          
            <li> Pickles</li>
          
            <li>Cheese</li>
          
            <li> Vegetable</li>
          
            <li> Pepperoni</li>
          
            <li> Special</li>
          
            <li>Fish-N-Chips</li>
          
            <li>Spicy Chicken &amp; Noodle</li>
          
            <li>Fruit Salad</li>
          
        
      </ul>
    </td>
  </tr>
  <tr id="frary_menu">
    <th class="pomona_background"><a href="http://www.pomona.edu/administration/dining/menus/frary.aspx" target="_blank">Frary</a></th>
    <td>
      <span class="mobile_meal_header">Breakfast</span>
      <ul>
        
          <li>Chicken Apple Sausage</li>
        
          <li> Vegetarian Sausage</li>
        
          <li> Hashbrowns</li>
        
          <li> Tofu Scramble</li>
        
          <li> Hard Boiled Eggs</li>
        
          <li> Scrambled Eggs and Egg Whites</li>
        
          <li>Made to Order Omelets</li>
        
          <li>Assorted Smoothies</li>
        
          <li>Oatmeal with Assorted Toppings</li>
        
          <li>Fruit Bar</li>
        
          <li> Granola</li>
        
          <li> Flavored Yogurt</li>
        
          <li>Blueberry Cheese Coffee Cake</li>
        
          <li> Croissants</li>
        
      </ul>
    </td>
    <td>
      <span class="mobile_meal_header">Lunch</span>
      <ul>
        
          <li>Chicken and Carne Asada Tacos</li>
        
          <li> Vegetarian Sopes</li>
        
          <li> Spanish Rice</li>
        
          <li> Refried Beans</li>
        
          <li> Calabacitas</li>
        
          <li> Corn and Flour Tortillas</li>
        
          <li>Fig and Feta Salad</li>
        
          <li> Pinto Beans</li>
        
          <li> Brown Rice</li>
        
          <li>Thai Red Curry Chicken Bowl</li>
        
          <li>Cheese and Pepperoni</li>
        
          <li>Made To Order: Hamburgers</li>
        
          <li> Hotdogs</li>
        
          <li> Grilled Chicken</li>
        
          <li> Turkey Burgers</li>
        
          <li> Veggie Burgers</li>
        
          <li> Black Bean Burgers</li>
        
          <li> French Fries</li>
        
          <li> Onion Rings</li>
        
          <li>Toasted Barley &amp; Beef Soup</li>
        
          <li> Pumpkin Soup</li>
        
          <li>Salad Bar and Deli</li>
        
          <li>Whoopie Pies</li>
        
          <li> Toffee Shortbread Cookies</li>
        
          <li> Vegan Rice Pudding</li>
        
      </ul>
    </td>
    <td>
      <span class="mobile_meal_header">Dinner</span>
      <ul>
        
          <li>Sauerbraten (German Red Wine Braised Beef)</li>
        
          <li> Seitan Sauerbraten</li>
        
          <li> Roasted Red Potatoes</li>
        
          <li> Spaetzle with Gruyere and Caramelized Onions</li>
        
          <li> Green Beans</li>
        
          <li> Roasted Cauliflower</li>
        
          <li> Pretzel Rolls</li>
        
          <li>Fig and Feta Salad</li>
        
          <li> Lentils</li>
        
          <li> Basmati Rice</li>
        
          <li>Pasta (Gluten Free Pasta Available) with MSC Certified Shrimp</li>
        
          <li> and Vegetables with Parmesan and Fresh Basil with White Wine Sauce</li>
        
          <li>Cheese and Pepperoni</li>
        
          <li>Made To Order: Hamburgers</li>
        
          <li> Hotdogs</li>
        
          <li> Grilled Chicken</li>
        
          <li> Turkey Burgers</li>
        
          <li> Veggie Burgers</li>
        
          <li> Black Bean Burgers</li>
        
          <li> French Fries</li>
        
          <li> Onion Rings</li>
        
          <li>Toasted Barley &amp; Beef Soup</li>
        
          <li> Pumpkin Soup</li>
        
          <li>Salad Bar and Deli</li>
        
          <li>Apple Dumplings</li>
        
          <li> Vegan Rice Pudding</li>
        
      </ul>
    </td>
  </tr>
  <tr id="oldenborg_menu">
    <th class="pomona_background"><a href="http://www.pomona.edu/administration/dining/menus/oldenborg.aspx" target="_blank">Oldenborg</a></th>
    <td>
      <span class="mobile_meal_header">Breakfast</span>
      <ul>
        <li>Closed.</li>
      </ul>
    </td>
    <td>
      <span class="mobile_meal_header">Lunch</span>
      <ul>
        
          <li>No menu.</li>
        
      </ul>
    </td>
    <td>
      <span class="mobile_meal_header">Dinner</span>
      <ul>
        <li>Closed.</li>
      </ul>
    </td>
  </tr>
  <tr id="cmc_menu">
    <th class="cmc_background"><a href="http://collins-cmc.cafebonappetit.com/hungry/collins/" target="_blank">CMC</a></th>
    <td>
      <span class="mobile_meal_header">Breakfast</span>
      <ul>
        
          <li>No menu.</li>
        
      </ul>
    </td>
    <td>
      <span class="mobile_meal_header">Lunch</span>
      <ul>
        
          <li>No menu.</li>
        
      </ul>
    </td>
    <td>
      <span class="mobile_meal_header">Dinner</span>
      <ul>
        
          <li>No menu.</li>
        
      </ul>
    </td>
  </tr>
  <tr id="scripps_menu">
    <th class="scripps_background"><a href="http://www.scrippscollege.edu/students/dining-services/" target="_blank">Scripps</a></th>
    <td>
      <span class="mobile_meal_header">Breakfast</span>
      <ul>
        
          <li>Breads and Baked Goods</li>
        
          <li>Food Bars, hot oatmeal w/toppings, waffles, chocolate chip pancakes, fruit and yogurt, cold cereals, bagels &amp;amp</li>
        
          <li>toastings, omelets made to order</li>
        
          <li>Breakfast Entrees and Sides</li>
        
          <li>scrambled eggs plain or with cheddar, cage free egg whites, turkey bacon, French fried tater tots, breakfast burrito w/chorizo, Vegan/Vegetarian</li>
        
          <li>scrambled tofu, sticky rice, vegetarian sausage patty</li>
        
      </ul>
    </td>
    <td>
      <span class="mobile_meal_header">Lunch</span>
      <ul>
        
          <li>Soup and Salad</li>
        
          <li>creamy broccoli cheddar soup, hearty beef vegetable soup, couscous salad w/mint, cucumber salad</li>
        
          <li>Pizza Station</li>
        
          <li>chicken bruschetta flatbread melt, cheeseburger pizza, cheese, pepperoni and grilled vegetable pizzas</li>
        
          <li>Grill Station</li>
        
          <li>grilled chicken breast, French fries, burgers-original, cheese, turkey and gardenburgers, grilled cheese sandwich</li>
        
          <li>Action Station</li>
        
          <li>Wings and Things Bar - chef&#39;s choice</li>
        
          <li>Main Entree Favorite Station</li>
        
          <li>braised short ribs, au gratin potatoes, roasted corn on the cob</li>
        
          <li>Healthy U Station</li>
        
          <li>Vegan, Thai green curry w/tofu, Vegetarian, fried vegetable mini egg rolls, Gluten Free, Singapore rice noodles</li>
        
          <li>Allergy Free, roasted turkey breast, roasted acorn squash, fresh cauliflower</li>
        
          <li>Salad Bar, Deli Sandwich Station, Desserts</li>
        
      </ul>
    </td>
    <td>
      <span class="mobile_meal_header">Dinner</span>
      <ul>
        
          <li>No menu.</li>
        
      </ul>
    </td>
  </tr>
  <tr id="pitzer_menu">
    <th class="pitzer_background"><a href="http://pitzer.cafebonappetit.com/" target="_blank">Pitzer</a></th>
    <td>
      <span class="mobile_meal_header">Breakfast</span>
      <ul>
        
          <li>No menu.</li>
        
      </ul>
    </td>
    <td>
      <span class="mobile_meal_header">Lunch</span>
      <ul>
        
          <li>Chicken Tomatillo Soup</li>
        
          <li>Vegetable And Spilt Pea Soup</li>
        
          <li>Pasta Bar</li>
        
          <li>Build Your Own Sandwich</li>
        
          <li>Grill</li>
        
          <li>Chicken Marsala</li>
        
          <li>Panko Crusted Tofu</li>
        
          <li>Roasted Vegetable Orzo</li>
        
          <li>Roasted Turnips</li>
        
          <li>Roasted Beets</li>
        
      </ul>
    </td>
    <td>
      <span class="mobile_meal_header">Dinner</span>
      <ul>
        
          <li>Chicken Tomatillo Soup</li>
        
          <li>Vegetable And Spilt Pea Soup</li>
        
          <li>A.M. In The P.M.</li>
        
          <li>Spinach And Cheese Pizza</li>
        
          <li>Sausage Pizza</li>
        
          <li>Cheese Chilaquiles</li>
        
          <li>Grilled Steak</li>
        
          <li>Zucchini Fritters And Garlic Tomato Sauce</li>
        
          <li>Baked Sweet Potatoes</li>
        
          <li>Sauteed Greens Beans</li>
        
          <li>Steamed Rainbow Cauliflower</li>
        
      </ul>
    </td>
  </tr>
  <tr id="mudd_menu">
    <th class="mudd_background"><a href="http://www.hmcdining.com/dining/index.html" target="_blank">Mudd</a></th>
    <td>
      <span class="mobile_meal_header">Breakfast</span>
      <ul>
        
          <li>Oatmeal</li>
        
          <li>Scrambled Eggs</li>
        
          <li>Hard Cooked Eggs</li>
        
          <li>Scrambled Tofu</li>
        
          <li>Egg &amp; Cheese Biscuit</li>
        
          <li>Sausage Gravy &amp; Biscuit</li>
        
          <li>French Toast Sticks</li>
        
          <li>Tri-Tater Patties</li>
        
          <li>Pork Sausage Patty</li>
        
          <li>Waffle Bar</li>
        
          <li>Plain Bagel</li>
        
          <li>Blueberry Mini Scone</li>
        
          <li>Chocolate Chunk Muffins</li>
        
          <li>Butter Croissant</li>
        
          <li>Mini Cobblesone Roll</li>
        
          <li>Banana Pineapple Yogurt Smoothie</li>
        
      </ul>
    </td>
    <td>
      <span class="mobile_meal_header">Lunch</span>
      <ul>
        
          <li>Roasted Garden Vegetable Soup</li>
        
          <li>Caldo Gallego Soup</li>
        
          <li>Cream of Spinach Soup</li>
        
          <li>Herb Seasoned Breadsticks</li>
        
          <li>Korean Taco Station</li>
        
          <li>Cajun Chicken &amp; Pepper Jack Sandwich</li>
        
          <li>Black Bean, Corn &amp; Jicama Salad</li>
        
          <li>Burger Bar</li>
        
          <li>All Beef Hot Dog</li>
        
          <li>Classic Grilled Chicken Breast</li>
        
          <li>Chicken Fried Beef Patty</li>
        
          <li>Grilled Cheese Sandwiches</li>
        
          <li>French  Fries</li>
        
          <li>Baked Pork Ribs with BBQ Sauce</li>
        
          <li>Easy Split Biscuit</li>
        
          <li>Macaroni &amp; Cheese</li>
        
          <li>Broccoli with Sauteed Carrots</li>
        
          <li>Curried Tofu with Jasmine Rice</li>
        
          <li>Whole Wheat Penne with Fra Diavolo Sauce</li>
        
          <li>Made to Order Deli Core</li>
        
          <li>Salad Bar Station</li>
        
          <li>Orzo with Sun-dried Tomato &amp; Walnuts</li>
        
          <li>Lucky Charms Cereal Bars</li>
        
          <li>Banana Cream Pie Pudding Cup</li>
        
          <li>Strawberry Jell-O Parfait</li>
        
          <li>Chocolate Chip Cookie</li>
        
          <li>Lemon Bars</li>
        
          <li>Vanilla Pudding Cup</li>
        
      </ul>
    </td>
    <td>
      <span class="mobile_meal_header">Dinner</span>
      <ul>
        
          <li>Roasted Garden Vegetable Soup</li>
        
          <li>Caldo Gallego Soup</li>
        
          <li>Cream of Spinach Soup</li>
        
          <li>Herb Seasoned Breadsticks</li>
        
          <li>Gourmet Sweet Crepe Bar</li>
        
          <li>Salad Toss Bar</li>
        
          <li>Teriyaki Chicken</li>
        
          <li>Brown Rice, steamed</li>
        
          <li>Stir Fried Cabbage w/ Red Peppers &amp; Peas</li>
        
          <li>Maple Glazed Roast Turkey Breast</li>
        
          <li>Green Peas</li>
        
          <li>Whole Berry Cranberry Sauce</li>
        
          <li>Mashed Sweet Potatoes</li>
        
          <li>Spicy Vegan Vegetable &amp; Peanut Curry</li>
        
          <li>Basmati Rice - vegan</li>
        
          <li>Eggplant Rollard w/Wild Mushrooms &amp; Tofu</li>
        
          <li>Made to Order Deli Core</li>
        
          <li>Salad Bar Station</li>
        
          <li>Orzo with Sun-dried Tomato &amp; Walnuts</li>
        
          <li>Orange Angel Cupcakes</li>
        
          <li>Peach Crisp with Oat Topping</li>
        
          <li>Banana Cream Pie Pudding Cup</li>
        
          <li>Strawberry Jell-O Parfait</li>
        
          <li>Chocolate Chip Cookie</li>
        
      </ul>
    </td>
  </tr>
</table>

  
</section>

  
  

<nav id="sitewide" class="secondary">
  <ul>
    
    
    <li id="food" class="group"><h1>Dining &amp; Shopping</h1>
      <ul>
        <li><a href="/menu/">Dining Halls Menu</a></li>
        <li><a href="/eatshop/on-campus/">On-campus Eateries</a></li>
        <li><a href="/eatshop/restaurants/">Restaurants</a></li>
        <li><a href="/eatshop/businesses/">Local Businesses</a></li>
        <li><a href="http://coopstore.pomona.edu/">Coop Store</a></li>
        
        <li><a href="/eatshop/coop-fountain/">Coop Fountain</a></li>
        
      </ul>
    </li>
    

    
    
    <li id="services" class="group">
      <h1>Services</h1>
      <ul>
        <li><a href="/courses/">Course Search</a></li>
        <li><a href="https://aspc.pomona.edu/course-reviews/">Course Reviews</a></li>
        <li><a href="/rideshare/">5C Ride Share</a></li>
        <li><a href="/housing/">Housing Search</a></li>
        <li><a href="/sagebooks/">SageBooks</a></li>
        
        <li><a href="/services/walker-wall-paint/">Walker Wall Paint</a></li>
        
        <li><a href="/services/turbovote/">TurboVote</a></li>
        
      </ul>
    </li>
    

    
    
    <li id="information" class="group">
      <h1>Information</h1>
      <ul>
        <li><a href="/events/">Event Calendar</a></li>
        
      </ul>
    </li>
    

    

    
    <li id="senate" class="group">
      <h1>Senate</h1>
      <ul>
        
        <li><a href="/senate/positions/">Positions</a></li>
        
        <li><a href="/senate/policies/">Policies</a></li>
        
        <li><a href="/senate/meetings-and-minutes/">Meetings &amp; Minutes</a></li>
        
        <li><a href="/senate/pec/">PEC</a></li>
        
        <li><a href="/senate/budget/">Budget</a></li>
        
        <li><a href="/senate/digital-media-programming/">Digital Media Group</a></li>
        
        <li><a href="/senate/funding-requests/">Funding Requests</a></li>
        
        <li><a href="/senate/documents/">Document Archive</a></li>
        
        <li><a href="/senate/senators/">Senators</a></li>
        
        <li><a href="http://aspc.pomona.edu/vote/">Elections &amp; Voting</a></li>
      </ul>
    </li>
    

    
    

    <li id="partners" class="group"><h1>Partners</h1>
      <ul>
        <li><a href="http://www.pomona.edu/administration/campus-center/index.aspx">Smith Campus Center</a></li>
        <li><a href="http://www.kspc.org/">KSPC 88.7</a></li>
        <li><a href="http://tsl.pomona.edu/">The Student Life</a></li>
        <li id="amazon_link"><a href="http://www.amazon.com/?_encoding=UTF8&amp;tag=assostudofpom-20&amp;linkCode=ur2&amp;camp=1789&amp;creative=390957">Shop Amazon Associates</a><img src="https://www.assoc-amazon.com/e/ir?t=assostudofpom-20&amp;l=ur2&amp;o=1" width="1" height="1" border="0" alt="" style="border:none !important; margin:0px !important;" /></li>
      </ul>
    </li>
  </ul>
</nav>

  
  
  
  </div> <!-- end content main -->
  </div>
  <footer>
    <p>&copy; 2014 Associated Students of Pomona College</p>
    <p>Directory and course information provided by and copyright Pomona College.</p>
    <p>Created by the <a href="http://aspc.pomona.edu/senate/digital-media-programming/">ASPC Digital Media Group</a><br>Joseph Long &rsquo;14, Matt Dahl  &rsquo;17, Dima Smirnov  &rsquo;17.</p>
  </footer>
  </div>
  </body>
</html>
"""


$ = cheerio.load(menuString)

contents = (selector) ->
  $(selector).toArray().map (x) -> $(x).text()

# headers = contents "#meal_header>th"

# sections = $("#menu_table>tr").toArray().map (x) -> $(x).attr('id')
# [ 'meal_header',
#   'frank_menu',
#   'frary_menu',
#   'oldenborg_menu',
#   'cmc_menu',
#   'scripps_menu',
#   'pitzer_menu',
#   'mudd_menu' ]

meals = contents("#meal_header>th")[1..]
menuIds  = ['frank_menu'
            'frary_menu'
            'oldenborg_menu'
            'cmc_menu'
            'scripps_menu'
            'pitzer_menu'
            'mudd_menu' ]

name = 
  'frank_menu': "Frank"
  'frary_menu': "Frary"
  'oldenborg_menu': "Oldenborg"
  'cmc_menu': "CMC"
  'scripps_menu': "Scripps"
  'pitzer_menu': "Pitzer"
  'mudd_menu': "Mudd"


parseMenu = (menuId) ->
  menu = {}
  menu.name = name[menuId]
  menu.link = $("tr##{menuId}").find('a').attr('href')
  foods = $("tr##{menuId}>td").toArray().map((x) -> _.flatten($(x).find('ul').children().toArray().map((x) -> $(x).text().split(','))).map( (x) -> _.trim x))
  menu.meals = _.map [0...meals.length], (i) -> {name:meals[i], food: foods[i]}
  return menu

# for menuId in menuIds
#   console.log parseMenu menuId

# console.log parseMenu("scripps_menu").meals


console.log $("#frank_menu li").map( -> $(this).text()).toArray()

console.log  $("tr#frank_menu>td").toArray().map( (x) -> $(x).find('ul').children().toArray().map( (x) -> $(x).text()))

