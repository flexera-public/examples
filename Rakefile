# Add your own tasks in files placed in lib/tasks ending in .rake,
# for example lib/tasks/capistrano.rake, and they will automatically be available to Rake.

require(File.join(File.dirname(__FILE__), 'config', 'boot'))

require 'rake'
require 'rake/testtask'
require 'rake/rdoctask'

require 'tasks/rails'

desc "Copy in common app_test files"
task :get_common do
  # Copy over shared files  
  files = Dir.glob('../common/web/**/*')
  files.each do |source|
    target = File.join("public", source.sub(/..\/common\/web\//,"" ))
    cp_r source, target #, :verbose => true
  end
end

 task :create_db do
      load_cmd= "if [ `psql -h localhost -U postgres --list | grep 'app_test'| wc -l` == '0' ]; then psql -h localhost -U postgres -c 'create database app_test'; fi"
      system(load_cmd)
     end

 task :load_sql do
      load_cmd= "psql -h localhost -U postgres -d app_test -c < db/app_test.sql"
      system(load_cmd)
     end
