class Api::V1::ExhibitionsController < ApplicationController

  def index
    @exhibitions = Exhibition.all
    render json: @exhibitions
  end

  def show
    @exhibition = Exhibition.find(params[:id])
    render json: @exhibition
  end

end
