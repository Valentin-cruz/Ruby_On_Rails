class CreateOwners < ActiveRecord::Migration[5.2]
  def change
    create_table :owners do |t|
      t.references :user, index: true, foreign_key: true
      t.references :blog, index: true, foreign_key: true
      
      t.timestamps
    end
  end
end
