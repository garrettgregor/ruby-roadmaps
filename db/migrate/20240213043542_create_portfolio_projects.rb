class CreatePortfolioProjects < ActiveRecord::Migration[7.1]
  def change
    create_table :portfolio_projects do |t|
      t.references :portfolio, null: false, foreign_key: true
      t.references :project, null: false, foreign_key: true

      t.timestamps
    end
  end
end
