require 'rake/testtask'

task :default => [:test]

Rake::TestTask.new do |task|
  task.pattern = 'test/noie_test.rb'
  task.warning, task.verbose = true, true
end

begin
  require 'jeweler'
  Jeweler::Tasks.new do |gemspec|
    gemspec.name = "rack-noie"
    gemspec.summary = "A Rack middleware to redirect IE users out of your website"
    gemspec.email = "julioody@gmail.com"
    gemspec.homepage = "http://github.com/juliocesar/rack-noie"
    gemspec.authors = ["Julio Cesar Ody"]
  end
rescue LoadError
  puts "Jeweler not available. Install it with: sudo gem install technicalpickles-jeweler -s http://gems.github.com"
end
