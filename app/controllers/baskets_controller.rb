class BasketsController < ApplicationController

  # Let's fake a database records
  BASKETS = {
    1 => { name: "Tabuse", position: "Point Guard", nationality: "Japan" },
    2 => { name: "Watanabe", position: "Forward", nationality: "Japan" },
    3 => { name: "Harden", position: "Point Guard", nationality: "USA" }
  }

  def index
    @baskets = Basket.all
  end

  def show
    @basket = Basket.find(params[:id])
  end

  def new
    @basket = Basket.new
  end

  def create

  end

  def edit
    @basket = Basket.find(params[:id])
  end

  def update

  end

  def delete
    @basket = Basket.find(params[:id])
    @basket.destroy
  end

  # def index
  #   if params[:player_type].blank?
  #     @baskets = BASKETS
  #   else
  #   @baskets = BASKETS.select do |id, basket|
  #     basket[:nationality] == params[:player_type]
  #     end
  #   end
  # end

  # def show
  #   @basket = BASKETS.find(params[:id])
  # end

  # def create
  #   @basket = BASKET.new(name: params[:name], address: params[:address])
  #   @basket.save
  # end

end
