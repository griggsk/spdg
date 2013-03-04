class InitiativesPopulations < ActiveRecord::Migration
  def up
    create_table :initiatives_populations, :id => false do |t|
      t.references :initiative, :population
    end
  end

  def down 
    drop_table :initiatives_populations
  end
end
