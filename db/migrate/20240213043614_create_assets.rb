class CreateAssets < ActiveRecord::Migration[7.1]
  def change
    create_table :assets do |t|
      t.references :project, null: false, foreign_key: true
      t.string :description
      t.string :url

      t.timestamps
    end
  end
end
