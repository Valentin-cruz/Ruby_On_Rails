class CreateLogins < ActiveRecord::Migration[5.2]
  def change
    create_table :logins do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.string :password
      t.integer :age

      t.timestamps
    end
  end
end
