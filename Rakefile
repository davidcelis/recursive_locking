begin
  require 'bundler/setup'
rescue LoadError
  puts 'You must `gem install bundler` and `bundle install` to run rake tasks'
end

Bundler::GemHelper.install_tasks

require 'rake/testtask'

Rake::TestTask.new('test:no_locking') do |t|
  t.libs << 'lib'
  t.libs << 'test'
  t.pattern = 'test/**/no_locking_test.rb'
  t.verbose = false
end

Rake::TestTask.new('test:locking') do |t|
  t.libs << 'lib'
  t.libs << 'test'
  t.pattern = 'test/**/locking_test.rb'
  t.verbose = false
end

Rake::TestTask.new('test:rack') do |t|
  t.libs << 'lib'
  t.libs << 'test'
  t.pattern = 'test/**/rack_test.rb'
  t.verbose = false
end

task default: ['test:no_locking', 'test:locking', 'test:rack']
