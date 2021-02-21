class Portfolio < ApplicationRecord
  has_many :portfolio_coins, dependent: :destroy
  has_many :coins, through: :portfolio_coins
  belongs_to :user

  validates_presence_of :name


  def add_portfolio_coins(params)
    clean_params = params.reject{|_, v| v.blank? || v.to_f <= 0}

    if !clean_params.empty?
      clean_params.each do |coin_name, qty|
        coin = Coin.find_by(name: coin_name)
        self.portfolio_coins.create(coin_id: coin.id, quantity: qty, name: coin_name)
      end
    else
      errors.add(:portfolio, "must have coins in order to be created.")
      self.destroy
      false
    end
  end

  def self.get_coins
    joins(:coins).pluck("coins.name").flatten.uniq.join(",")
  end

  def get_coins
    coins.pluck(:name).flatten.uniq.join(",")
  end

  def total_coin_value(currency)
    portfolio_coins.where(name: currency.name)
                           .sum("#{currency.price} * portfolio_coins.quantity")
  end

end
