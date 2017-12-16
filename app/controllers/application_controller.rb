class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  helper_method :alphavantage

  protected

  def alphavantage
    return Alphavantage::Client.new key: ENV['ALPHAVANTAGE_KEY']
  end
end
