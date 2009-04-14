require 'rake/testtask'

task :default => [:test]

Rake::TestTask.new do |task|
  task.pattern = 'test/noie_test.rb'
  task.warning, task.verbose = true, true
end