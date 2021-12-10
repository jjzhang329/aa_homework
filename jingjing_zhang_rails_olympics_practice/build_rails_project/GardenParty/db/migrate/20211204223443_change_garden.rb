class ChangeGarden < ActiveRecord::Migration[5.2]
  def change
    change_column_null :gardens, :name,  false 
    change_column_null :gardens, :size, false  
    change_column_null :gardens, :garden_owner_id, false

    add_index :gardens, [:name, :garden_owner_id], unique:true

  end
end
