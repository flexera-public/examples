class AppTest < ActiveRecord::Base
  set_table_name "app_test"
  
  def self.test_query
    find(:all)
  end

end
