class CreateAxeMasters < ActiveRecord::Migration
  def change
    create_table :axe_masters do |t|
      t.string :name
      
      t.timestamps
    end
  end
end
