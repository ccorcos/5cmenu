// This section sets up some basic app metadata,
// the entire section is optional.
App.info({
  id: 'com.chetcorcos.5cmenu',
  name: '5C Menu',
  description: 'Dining hall menus of the Claremont Colleges.',
  author: 'Chet Corcos',
  email: 'ccorcos@gmail.com',
  website: 'http://www.chetcorcos.com'
});

// Set up resources such as icons and launch screens.
// App.icons({
//   'iphone': 'icons/icon-60.png',
//   'iphone_2x': 'icons/icon-60@2x.png',
//   // ... more screen sizes and platforms ...
// });

// App.launchScreens({
//   'iphone': 'splash/Default~iphone.png',
//   'iphone_2x': 'splash/Default@2x~iphone.png',
//   // ... more screen sizes and platforms ...
// });

// Set PhoneGap/Cordova preferences
App.setPreference('BackgroundColor', '0x000000ff');
App.setPreference('HideKeyboardFormAccessoryBar', true);