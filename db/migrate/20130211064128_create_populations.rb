class CreatePopulations < ActiveRecord::Migration
  def change
    create_table :populations do |t|
      t.string :target

      t.timestamps
    end
  end
end
