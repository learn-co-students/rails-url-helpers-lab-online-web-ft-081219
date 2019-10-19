class AddAttributeToStudents < ActiveRecord::Migration
  def change
    add_column :students, :active, :boolean



      t.timestamps null: false
    end
  
end