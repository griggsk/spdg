class CreateImplementations < ActiveRecord::Migration
  def change
    create_table :implementations do |t|
      t.references :initiative
      t.integer :year

      t.timestamps
    end
    add_index :implementations, :stage_id
  end
end
