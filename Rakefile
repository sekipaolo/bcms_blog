# Add your own tasks in files placed in lib/tasks ending in .rake,
# for example lib/tasks/capistrano.rake, and they will automatically be available to Rake.

require File.expand_path('../config/application', __FILE__)
require 'rake'
require 'rake/testtask'
require 'rake/rdoctask'

require 'tasks/rails'

begin
  require 'jeweler'
  Jeweler::Tasks.new do |gemspec|
    gemspec.name = "bcms_blog"
    gemspec.rubyforge_project = "browsercms"
    gemspec.summary = "The Blog Module for BrowserCMS"
    gemspec.email = "github@browsermedia.com"
    gemspec.homepage = "http://browsercms.org"
    gemspec.description = "The Blog Module for BrowserCMS"
    gemspec.authors = ["BrowserMedia"]
    gemspec.files = []
    gemspec.files += Dir["app/**/*"]
    gemspec.files += Dir["doc/**/*"]
    gemspec.files += Dir["db/migrate/[0-9]*.rb"].reject {|f| f =~ /_browsercms|_load_seed/ }
    gemspec.files += Dir["lib/bcms_blog.rb"]
    gemspec.files += Dir["lib/bcms_blog/*"]
    gemspec.files += Dir["rails/init.rb"]
    gemspec.add_development_dependency 'bcms_support'
  end
rescue LoadError
  puts "Jeweler not available. Install it with: sudo gem install jeweler"
end

# These are new tasks
begin
  require 'rake/contrib/sshpublisher'
  namespace :rubyforge do
    desc "Release gem and RDoc documentation to RubyForge"
    task :release => ["rubyforge:release:gem"]
  end
rescue LoadError
  puts "Rake SshDirPublisher is unavailable or your rubyforge environment is not configured."
end

rails3

BcmsBlog::Application.load_tasks
