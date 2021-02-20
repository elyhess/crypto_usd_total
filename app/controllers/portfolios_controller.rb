class PortfoliosController < ApplicationController
  before_action :authenticate_user!

  def index
    @portfolios = current_user.portfolios
    # Get all coin names from all portfolios and only get name once
    @portfolio_coin_names = @portfolios.map do |portfolio|
      portfolio.portfolio_coins.map do |portfolio_coin|
        portfolio_coin.coin_name
      end
    end.flatten.uniq

    # @portfolio_coin_names = ["bitcoin"]
    query_string = @portfolio_coin_names.join(",")
    # query_string "bitcoin"
    response = Faraday.get("https://api.coingecko.com/api/v3/coins/markets?vs_currency=usd&ids=#{query_string}")
    data = JSON.parse(response.body, symbolize_names: true)
    @currencies = data.map do |coin_data|
      Currency.new(coin_data)
    end
    
    coin_value_dictionary = Hash.new
    @currencies.each do |crypto|
      coin_value_dictionary[crypto.name] = crypto.price
    end

    @portfolios.each do |portfolio|
      individual_portfolio_total_value = portfolio.coins.sum do |coin|
        coin_value_dictionary[coin.name] * PortfolioCoin.find_by(coin_id: coin.id).quantity
      end
      portfolio.update(total: individual_portfolio_total_value)
    end

    #Poro sample
    # coin_values = {
    #  bitcoin: 5042,
    #  ethereum: 2000,
    #  dogecoin: 0.004
    # }

  end

  def new
    @portfolio = current_user.portfolios.new
  end

  def create
    @portfolio = current_user.portfolios.new(name: params[:portfolio][:name])
    if @portfolio.save && @portfolio.add_portfolio_coins(portfolio_params)
      redirect_to portfolios_path, notice: "Successfully created portfolio."
    else
      render :new
    end
  end

  def destroy
    Portfolio.destroy(params[:id])
    redirect_to portfolios_path, notice: "Successfully deleted portfolio."
  end

  private

  def portfolio_params
    params.require(:portfolio).permit(
                                      :bitcoin,
                                      :ethereum,
                                      :monero,
                                      :uniswap,
                                      :garlicoin,
                                      :decentraland,
                                      :stellar,
                                      :ripple,
                                      :litecoin,
                                      :chainlink)
  end
end
