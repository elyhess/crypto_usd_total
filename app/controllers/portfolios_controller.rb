class PortfoliosController < ApplicationController
  before_action :authenticate_user!

  def index
  end

  def new
    @portfolio = current_user.portfolios.new
  end

  def create
    @portfolio = current_user.portfolios.create(params[:name])
    redirect_to new_portfolio_coin_path(@portfolio)
  end
end
