class Api::V1::SpreadsController < ApplicationController

  def create
    # NOTE we will translate type to id in React because only a few types that don't change.
    # TODO figure out where/how we will determine positions and meaning of cards and add db fields for this info -- create action logic may change depending on how this is implemented
    spread = Spread.create(spread_params)
    render json: spread
  end

  def index
    spreads = Spread.all
    render json: spreads
  end

  def update
    spread = Spread.find(params[:id])
    spread.update(spread_params)
    render json: spread
  end


  private

  def spread_params
    params.require(:spread).permit(:title, :description, :type_id)
  end

end
