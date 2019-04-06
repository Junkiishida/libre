class BasketsController < ApplicationController

  before_action :set_basket, only: [:show, :edit, :update, :destroy]

  def index
    @baskets = Basket.all
  end

  def show
  end

  def new
    @basket = Basket.new
  end

  def create
    @basket = Basket.create(basket_params)
    redirect_to baskets_path
  end

  def edit
  end

  def update
    @basket.update(basket_params)
    redirect_to basket_path(@basket)
  end

  def destroy
    @basket.destroy
    redirect_to baskets_path
  end

  private

  def basket_params
    params.require(:basket).permit(:name, :position, :nationality, :average_score)
  end

  def set_basket
    @basket = Basket.find(params[:id])
  end
end


  # # Let's fake a database records
  # BASKETS = {
  #   1 => { name: "Tabuse", position: "Point Guard", nationality: "Japan" },
  #   2 => { name: "Watanabe", position: "Forward", nationality: "Japan" },
  #   3 => { name: "Harden", position: "Point Guard", nationality: "USA" }
  # }

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
