class CreateProfessionaldevelopments < ActiveRecord::Migration
  def change
    create_table :professionaldevelopments do |t|
      t.string :name
      t.text :description

      t.timestamps
    end
  end
  
  def down 
    drop_table :professionaldevelopments
  end
end
