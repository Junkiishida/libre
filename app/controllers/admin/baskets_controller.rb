class Admin::BasketsController < ApplicationController

  def index
    @baskets = Basket.all
  end


end
