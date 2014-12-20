- 5cmenu.com was bought through [Google Domains](https://domains.google.com).
    
    Make an a A (host) record of `@` (root domain) pointing to the IP address of `origin.meteor.com`. Use `ping origin.meteor.com` to find out the IP address. Then add forwarding from the `www` subdomain to the root domain. Then you can simply deploy with `meteor deploy 5cmenu.com`.

- [Google Analytics](http://analytics.google.com) for tracking view namely. 

    I'm using web GA and mobile GA with a [Google Analytics Cordova plugin](https://github.com/danwilson/google-analytics-plugin).
    

    

    