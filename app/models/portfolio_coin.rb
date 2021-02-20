class PortfolioCoin < ApplicationRecord
  belongs_to :portfolio
  belongs_to :coin

  validates :quantity, numericality: true

  def coin_name
    Coin.find(self.coin_id).name
  end

end
