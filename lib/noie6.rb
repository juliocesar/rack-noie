module Rack
  class NoIE6
    def initialize(app, options = {})
      @app = app
      @options = options
      @options[:redirect] ||= 'http://www.microsoft.com/windows/internet-explorer/default.aspx'
    end

    def call(env)
      ie6_found_in?(env) ? kick_it : @app.call(env)    
    end

    private
    def ie6_found_in?(env)
      env['HTTP_USER_AGENT'][/MSIE 6.0/] and @options[:redirect] != env['PATH_INFO']
    end

    def kick_it
      [301, {'Location' => @options[:redirect]}, 'Fail browser is fail']
    end
  end
end