class AddNameToPortfolioCoin < ActiveRecord::Migration[5.2]
  def change
    add_column :portfolio_coins, :name, :string
  end
end
