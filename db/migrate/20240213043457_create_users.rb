class CreateUsers < ActiveRecord::Migration[7.1]
  def change
    create_table :users do |t|
      t.string :first_name
      t.text :last_name
      t.string :email
      t.string :photo_url
      t.boolean :is_admin

      t.timestamps
    end
    add_index :users, :email, unique: true
  end
end
