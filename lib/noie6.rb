module Rack
  class NoIE6
    def initialize(app, options = {})
      @app = app
      @options = options
      @options[:redirect] ||= 'http://www.microsoft.com/windows/internet-explorer/default.aspx'
      @options[:minimum] ||= 7.0
    end

    def call(env)
      ie6_found_in?(env) ? kick_it : @app.call(env)    
    end

    private
    def ie6_found_in?(env)
      if env['HTTP_USER_AGENT']
        is_ie?(env['HTTP_USER_AGENT']) and ie_version(env['HTTP_USER_AGENT']) < @options[:minimum] and @options[:redirect] != env['PATH_INFO']
      end
    end
    
    def is_ie?(ua_string)
      # We need at least one digit to be able to get the version, hence the \d
      ua_string.match(/MSIE \d/) ? true : false
    end
    
    def ie_version(ua_string)
      ua_string.match(/MSIE (\S+)/)[1].to_f
    end

    def kick_it
      [301, {'Location' => @options[:redirect]}, 'Fail browser is fail']
    end
  end
end