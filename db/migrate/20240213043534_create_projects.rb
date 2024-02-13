class CreateProjects < ActiveRecord::Migration[7.1]
  def change
    create_table :projects do |t|
      t.string :name
      t.boolean :viewable
      t.string :description
      t.string :accomplishments

      t.timestamps
    end
  end
end
