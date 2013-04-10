#!/usr/bin/env rake
# Add your own tasks in files placed in lib/tasks ending in .rake,
# for example lib/tasks/capistrano.rake, and they will automatically be available to Rake.

require File.expand_path('../config/application', __FILE__)

Myapp::Application.load_tasks


task :load_sql do
  load_cmd= "mysql < db/app_test.sql"
  system(load_cmd)
end

