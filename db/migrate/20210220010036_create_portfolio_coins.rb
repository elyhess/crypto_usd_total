class CreatePortfolioCoins < ActiveRecord::Migration[5.2]
  def change
    create_table :portfolio_coins do |t|
      t.references :portfolio, foreign_key: true
      t.references :coin, foreign_key: true
      t.float :quantity

      t.timestamps
    end
  end
end
