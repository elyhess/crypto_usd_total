class DefaultValueForPortfolioTotal < ActiveRecord::Migration[5.2]
  def change
    change_column :portfolios, :total, :float, default: 0.0
  end
end
