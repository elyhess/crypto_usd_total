class PortfolioCoinsController < ApplicationController
  before_action :set_portfolio, only: [:create, :new]

  def new
    @portfolio_coins = @portfolio.portfolio_coins.new
  end

  def create
    # params[:portfolio_coin].each do |coin_name, qty|
    #   if qty == nil || qty.to_i <= 0 || qty.to_s.count("a-zA-Z") > 0 || qty == ""
    #     redirect_to portfolios_path, notice: "Please enter valid coin values"
    #     return
    #   end
    # end

    # params[:portfolio_coin].each do |coin_name, quantity|
    #   coin = Coin.find_by(name: coin_name)
    #   PortfolioCoin.create(portfolio: @portfolio , coin: coin, quantity: quantity.to_i) if quantity != "" || quantity != "0" || quantity < 
    # end
  end

  private

  def set_portfolio
    @portfolio = Portfolio.find(params[:portfolio_id])
  end
end

