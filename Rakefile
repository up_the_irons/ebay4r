begin
  require 'rubygems'
  require 'rake/gempackagetask'
rescue Exception
  nil
end

require 'rake/testtask'

desc "Default Task"
task :default => :test_all

Rake::TestTask.new(:test_all) do |t|
  t.test_files = FileList[
    'test/tc_*.rb',
  ]
  t.warning = false
  t.verbose = false
end
