class AddDefaultValueToBooleanColumns < ActiveRecord::Migration[8.0]
  def change
    change_column_default :tasks, :urgent, false
    change_column_default :tasks, :important, false
    change_column_default :tasks, :complete, false
  end
end
