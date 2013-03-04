class CreateContacts < ActiveRecord::Migration
  def change
    create_table :contacts do |t|
      t.string :first
      t.string :last
      t.string :email
      t.references :state

      t.timestamps
    end
  end
end
