class CreateInitiatives < ActiveRecord::Migration
  def change
    create_table :initiatives do |t|
      t.references :state
      t.integer :start_year
      t.integer :end_year
      t.text :description
      t.text :resources

      t.timestamps
    end
  end
  
  def down 
    drop_table :initiatives
  end
  
end
