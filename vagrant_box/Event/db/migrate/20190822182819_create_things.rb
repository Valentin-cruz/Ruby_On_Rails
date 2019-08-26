class CreateThings < ActiveRecord::Migration[5.2]
  def change
    create_table :things do |t|
      t.string :name
      t.date :edate
      t.string :ecity
      t.string :estate
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
