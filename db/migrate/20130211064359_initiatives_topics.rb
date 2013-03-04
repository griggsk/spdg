class InitiativesTopics < ActiveRecord::Migration
  def up
    create_table :initiatives_topics, :id => false do |t|
      t.references :initiative, :topic
    end
  end

 def down 
    drop_table :initiatives_topics
  end
end
