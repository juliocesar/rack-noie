require 'rake/testtask'

task :default => [:test]

Rake::TestTask.new do |task|
  task.pattern = 'test/noie6_test.rb'
  task.warning, task.verbose = true, true
end

begin
  require 'jeweler'
  Jeweler::Tasks.new do |gemspec|
    gemspec.name = "rack-noie6"
    gemspec.summary = "A Rack middleware to redirect IE6 users out of your website"
    gemspec.email = "jerod.santo@gmail.com"
    gemspec.homepage = "http://github.com/sant0sk1/rack-noie6"
    gemspec.authors = ["Jerod Santo", "Julio Cesar Ody"]
  end
rescue LoadError
  puts "Jeweler not available. Install it with: sudo gem install technicalpickles-jeweler -s http://gems.github.com"
end