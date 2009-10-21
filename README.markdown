# rack-noie

rack-noie is the coolest rack middleware ever created. And it is so because it does _everyone_
a favor: it shows the way out of your website to poor souls out there using Internet Explorer 6.

# installation

    sudo gem install rack-noie -s http://gemcutter.org

# usage

just 

    require 'noie'
    
and

    use NoIE, :redirect => '/noieplease.html'
    
the above will redirect to a page noieplease.html in your website. You can redirect to
a URL as well, like so

    use NoIE, :redirect => 'http://slashdot.org'
    
or let the default kick in

    use NoIE
    
# disclaimer

I'm a nice guy. I'm so nice that the default URL points to Microsoft's IE8 upgrade page.

# license

MIT, as usual.
