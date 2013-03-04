class CreateImplementations < ActiveRecord::Migration
  def change
    create_table :implementations do |t|
      t.references :initiative
      t.integer :year

      t.timestamps
    end
    add_index :implementations
  end
  
  def down 
    drop_table :implementations
  end
end
