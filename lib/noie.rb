class NoIE  
  def initialize(app, options = {})
    @app = app
    @options = options
    # Defaults to a slighly less of an excuse that passes for a browser
    @options[:redirect] ||= 'http://www.microsoft.com/windows/downloads/ie/getitnow.mspx'
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