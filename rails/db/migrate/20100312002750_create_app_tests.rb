class CreateAppTests < ActiveRecord::Migration
  def self.up
    create_table :app_test do |t|
      t.column :name :string
      t.column :value :string
    end
  end

  def self.down
    drop_table :app_test
  end
end
