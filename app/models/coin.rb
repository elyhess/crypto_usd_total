class Coin < ApplicationRecord
  has_many :portfolio_coins
  has_many :portfolios, through: :portfolio_coins
end
