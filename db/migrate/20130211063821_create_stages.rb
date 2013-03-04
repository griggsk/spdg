class CreateStages < ActiveRecord::Migration
  def change
    create_table :stages do |t|
      t.string :name
      t.text :description

      t.timestamps
    end
  end
  
  def down 
    drop_table :stages
  end
end
