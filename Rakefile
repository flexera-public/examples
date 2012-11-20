# Add your own tasks in files placed in lib/tasks ending in .rake,
# for example lib/tasks/capistrano.rake, and they will automatically be available to Rake.

require(File.join(File.dirname(__FILE__), 'config', 'boot'))

require 'rake'
require 'rake/testtask'
require 'rdoc/task'

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

 task :load_sql do
      load_cmd= "mysql < db/app_test.sql"
      system(load_cmd)
     end
