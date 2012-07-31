class UpdateUserTasksSecond < ActiveRecord::Migration
  def up
change_column :tasks_users, :updated_at, :datetime, :null => true, :default => nil


  end

  def down
  end
end
