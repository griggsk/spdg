class CreateStages < ActiveRecord::Migration
  def change
    create_table :stages do |t|
      t.string :name
      t.text :description

      t.timestamps
    end
  end
end
