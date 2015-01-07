class CreateGuitars < ActiveRecord::Migration
  def change
    create_table :guitars do |t|
      t.string :make
      t.string :model
      t.string :color
      t.integer :axe_master_id
      
      t.timestamps
    end
  end
end
