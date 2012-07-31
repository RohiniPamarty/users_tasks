class CreateUserTasks < ActiveRecord::Migration
  def change
    create_table :tasks_users, :id => false do |t|
      t.references :task, :user
      t.timestamps
    end
add_index :tasks_users, [:user_id, :task_id]

  end
end
