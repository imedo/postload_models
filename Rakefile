# -*- ruby -*-

require 'rubygems'
require 'rake'
require 'rake/testtask'
require 'rake/rdoctask'
require 'hoe'
require './lib/postload_models.rb'

Hoe.new('PostloadModels', PostloadModels::VERSION) do |p|
  # p.rubyforge_name = 'PostloadModelsx' # if different than lowercase project name
  p.developer('Christian M. Weis', 'christian.weis@imedo.de')
end

desc 'Default: run unit tests.'
task :default => :test

desc 'Test the postload_models plugin.'
Rake::TestTask.new(:test) do |t|
  t.libs << 'lib'
  t.pattern = 'test/**/*_test.rb'
  t.verbose = true
end

desc 'Generate documentation for the postload_models plugin.'
Rake::RDocTask.new(:rdoc) do |rdoc|
  rdoc.rdoc_dir = 'rdoc'
  rdoc.title    = 'PostloadModels'
  rdoc.options << '--line-numbers' << '--inline-source'
  rdoc.rdoc_files.include('README')
  rdoc.rdoc_files.include('lib/**/*.rb')
end

# vim: syntax=Ruby
