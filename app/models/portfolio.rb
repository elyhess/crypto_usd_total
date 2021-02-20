class Portfolio < ApplicationRecord
  has_many :portfolio_coins
  has_many :coins, through: :portfolio_coins
  belongs_to :user
end
