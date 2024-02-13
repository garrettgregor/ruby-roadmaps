class CreatePortfolios < ActiveRecord::Migration[7.1]
  def change
    create_table :portfolios do |t|
      t.references :user, null: false, foreign_key: true
      t.text :name
      t.boolean :is_view

      t.timestamps
    end
  end
end
