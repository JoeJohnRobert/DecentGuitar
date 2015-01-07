class CreateGuitars < ActiveRecord::Migration
  def change
    create_table :guitars do |t|
      t.string :name
      t.string :make
      t.string :model
      t.integer :axe_master_id
      
      t.timestamps
    end
  end
end
