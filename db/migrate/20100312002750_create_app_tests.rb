class CreateAppTests < ActiveRecord::Migration
  def self.up
    create_table :app_test do |t|
      t.string :name
      t.string :value
    end
  end

  def self.down
    drop_table :app_test
  end
end
