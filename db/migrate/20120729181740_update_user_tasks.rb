class UpdateUserTasks < ActiveRecord::Migration
  def up
change_column :tasks_users, :created_at, :datetime, :null => true, :default => nil


  end

  def down
  end
end
