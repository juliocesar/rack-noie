require 'test/unit'

require 'rubygems'
require 'rack/mock'

require File.join(File.dirname(__FILE__), '..', 'lib', 'noie6')

class TestApp
  def call(env)
    [200, {}, 'Hi Internets!']
  end
end

class NoieTest < Test::Unit::TestCase
  
  def test_redirects_to_where_it_should_if_ie6
    request  = Rack::MockRequest.new(Rack::NoIE6.new(TestApp.new, {:redirect => 'http://slashdot.org'}))
    response = request.get('/', {'HTTP_USER_AGENT' => 'MSIE 6.0' })
    assert_equal 301, response.status
    assert_equal response.location, 'http://slashdot.org'
  end
  
  def test_redirects_to_local_urls
    request  = Rack::MockRequest.new(Rack::NoIE6.new(TestApp.new, {:redirect => '/foo'}))
    response = request.get('/foo', {'HTTP_USER_AGENT' => 'MSIE 6.0' })    
    assert_equal "Hi Internets!", response.body
  end
  
  def test_allows_if_not_ie6
    request  = Rack::MockRequest.new(Rack::NoIE6.new(TestApp.new, {:redirect => 'http://slashdot.org'}))
    response = request.get('/', {'HTTP_USER_AGENT' => 'Mozilla/5.0'})
    assert_equal "Hi Internets!", response.body
  end
  
  def test_allows_if_no_user_agent_specified
    request  = Rack::MockRequest.new(Rack::NoIE6.new(TestApp.new, {:redirect => 'http://slashdot.org'}))
    response = request.get('/')
    assert_equal "Hi Internets!", response.body
  end
  
end