# Note

**This project is no longer maintained**. It was written during darker days of the web, when handling the issues
that prompted it's existence was very time consuming. Refer to client-side techniques for graceful degradation.


# rack-noie

rack-noie is the coolest rack middleware ever created. And it is so because it does _everyone_
a favor: it shows the way out of your website to poor souls out there using Internet Explorer 6.

# installation

Add to your Gemfile

```
gem "rack-noie", :require => "noie"
```

# Rails Usage

Add to your config/application.rb

```
config.middleware.use Rack::NoIE
```

By default, this will redirect IE6 (and below) to [MS's upgrade site](http://www.microsoft.com/windows/internet-explorer/default.aspx)

### No IE-8

For an updated slant (only let IE9 in):

```
config.middleware.use Rack::NoIE, {:redirect => "http://ie8nomore.com/", 
                                   :minimum => 9}
```

### No IE FOREVS
```
config.middleware.use Rack::NoIE, {:redirect => "/why-i-dont-support-ie.html", 
                                   :minimum => 29}
```

# Rack / Sinatra usage

    use Rack::NoIE, :redirect => '/noieplease.html'
    
the above will redirect to a page noieplease.html in your website. You can redirect to
a URL as well, like so

    use Rack::NoIE, :redirect => 'http://slashdot.org'
    
or let the default kick in

    use Rack::NoIE
    
# disclaimer

I'm a nice guy. I'm so nice that the default URL points to Microsoft's IE8 upgrade page.

# license

MIT, as usual.
