class CreatePerson < ActiveRecord::Migration[6.1]
  def change
    create_table :people do |t|
      t.string :name
      t.integer :house_id
      
      t.timestamps
    end
  end
end
