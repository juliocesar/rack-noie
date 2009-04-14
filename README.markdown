# rack-noie

rack-noie is the coolest rack middleware ever created. And it is so because it does _everyone_
a favor: it shows the way out of your website to poor souls out there using Internet Explorer 6.

I don't wanna hear excuses. IE6 stinks. If we keep developing software that plays well with it,
they'll come up with yet more crap (read: IE7, although a little bit less bad than IE6), until
Microsoft single-handedly manages to hold us back for a few more years.

# usage

just 

    require 'noie' # or 'juliocesar-noie' when i gemify it
    
and

    use NoIE, :redirect => '/noieplease.html'
    
the above will redirect to a page noieplease.html in your website. You can redirect to
a URL as well, like so

    use NoIE, :redirect => 'http://slashdot.org'
    
or let the default kick in

    use NoIE
    
# disclaimer

I'm a nice guy. I'm so nice that the default URL points to Microsoft's IE7 upgrade page.

# license

MIT, as usual.