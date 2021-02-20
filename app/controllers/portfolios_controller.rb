class PortfoliosController < ApplicationController
  before_action :authenticate_user!

  def index
    @portfolios = current_user.portfolios
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
