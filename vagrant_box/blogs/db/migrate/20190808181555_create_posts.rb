class CreatePosts < ActiveRecord::Migration[5.2]
  def change
    create_table :posts do |t|
      t.references :blog, index: true, foreign_key: true
      t.references :user, index: true, foreign_key: true
      t.string :title
      t.string :content

      t.timestamps
    end
  end
end
