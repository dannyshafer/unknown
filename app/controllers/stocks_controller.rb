class StocksController < ApplicationController
  def index
  end

  def show
    @stock = alphavantage.stock symbol: params[:id]
  end

end
