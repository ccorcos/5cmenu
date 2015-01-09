# [5C Menu](5cmenu.com)

## TODO
- offline refresh overlay...?
- run on Android
- google play store


## LATER
- android, ipad
- star is the landing page, groundb
- search tool
- Village Menu
- automated advertisement charging


Using some google analytics:
`meteor add cordova:com.danielcwilson.plugins.googleanalytics@https://github.com/danwilson/google-analytics-plugin/tarball/0c8a8a3587c565606255623b9e6bdd634a9d47b3`



## Deploying iOS

Make sure you've turned the offline mode off.

Then deploy:

`meteor deploy 5cmenu.com`

Then build (oops. right now iOS runs at 5cmenu.meteor.com):
`trash .meteor/local`
`meteor run ios --mobile-server=https://5cmenu.com`
`cd .meteor/local/cordova-build/platforms/ios`
`open 5C\ Menu.xcodeproj`


Select iOS Device to run on. Product > Archive. Validate. Submit.

Then go on iTunes Connect and start filling everything in.