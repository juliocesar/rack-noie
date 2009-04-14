require 'test/unit'

require 'rubygems'
require 'rack/mock'

require File.join(File.dirname(__FILE__), '..', 'lib', 'noie')

class TestApp
  def call(env)
    [200, {}, 'Hi Internets!']
  end
end

class NoieTest < Test::Unit::TestCase
  
  def test_redirects_to_where_it_should_if_ie6
    request = Rack::MockRequest.new(NoIE.new(TestApp.new, {:redirect => 'http://slashdot.org'}))
    response = request.get('/', {'HTTP_USER_AGENT' => 'MSIE 6.0' })
    assert_equal 301, response.status
    assert_equal response.location, 'http://slashdot.org'
  end
  
  def test_allows_local_local_urls
    request = Rack::MockRequest.new(NoIE.new(TestApp.new, {:redirect => '/foo'}))
    response = request.get('/foo', {'HTTP_USER_AGENT' => 'MSIE 6.0' })    
    assert_equal "Hi Internets!", response.body
  end
  
end