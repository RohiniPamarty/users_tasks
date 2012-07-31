class CreateTasks < ActiveRecord::Migration
  def change
    create_table :tasks do |t|
      t.string :detail
      t.date :completion
      t.boolean :status, :default => false
      
      t.timestamps
    end
  end
end
