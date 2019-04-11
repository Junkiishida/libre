class EvaluationsController < ApplicationController

  before_action :set_basket

  def new
    @evaluation = @basket.evaluations.build
  end

  def create
    @evaluation = Evaluation.new(evaluation_params)
    @evaluation.basket = @basket
    @evaluation.save
    redirect_to basket_path(@basket)
  end

  private

  def set_basket
    @basket = Basket.find(params[:basket_id])
  end

  def evaluation_params
    params.require(:evaluation).permit(:score, :comment)
  end
end
