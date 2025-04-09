class CreateTasks < ActiveRecord::Migration[8.0]
  def change
    create_table :tasks do |t|
      t.string :task_name
      t.boolean :urgent
      t.boolean :important
      t.boolean :complete

      t.timestamps
    end
  end
end
