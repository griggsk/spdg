class InitiativesProfessionaldevelopments < ActiveRecord::Migration
  def up
     create_table :initiatives_professionaldevelopments, :id => false do |t|
      t.references :initiative, :professionaldevelopment
    end
  end

  def down
  end
end
