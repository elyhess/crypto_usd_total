class Portfolio < ApplicationRecord
  has_many :portfolio_coins, dependent: :destroy
  has_many :coins, through: :portfolio_coins
  belongs_to :user

  validates_presence_of :name


  def add_portfolio_coins(params)
    clean_params = params.reject{|_, v| v.blank? || v.to_i <= 0}

    if !clean_params.empty?
      clean_params.each do |coin_name, qty|
        coin = Coin.find_by(name: coin_name)
        self.portfolio_coins.create(coin_id: coin.id, quantity: qty)
      end
    else
      errors.add(:portfolio, "must have coins in order to be created.")
      self.destroy
      false
    end
  end

end
