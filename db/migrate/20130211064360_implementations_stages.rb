class ImplementationsStages < ActiveRecord::Migration
  def up
    create_table :implementations_stages, :id => false do |t|
      t.references :implementation, :stage
    end
  end

   def down 
    drop_table :implementations_stages
  end
end
