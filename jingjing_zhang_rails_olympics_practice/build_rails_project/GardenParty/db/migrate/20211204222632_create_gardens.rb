class CreateGardens < ActiveRecord::Migration[5.2]
  def change
    create_table :gardens do |t|
      t.string :name
      t.integer :size
      t.integer :garden_owner_id

      t.timestamps
    end
  end
end
