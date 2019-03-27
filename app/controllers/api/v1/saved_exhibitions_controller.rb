class Api::V1::SavedExhibitionsController < ApplicationController
  def index
    @saved_exhibitions = SavedExhibition.all
    render json: @saved_exhibitions
  end

  def show
    @saved_exhibition = SavedExhibition.find(params[:id])
    render json: @saved_exhibition
  end

  def create
    @saved_exhibition = SavedExhibition.create(saved_exhibition_params)
    render json: @saved_exhibition
  end

  def destroy
    @saved_exhibition = SavedExhibition.find(params[:id])
    @saved_exhibition.destroy
    render json: @saved_exhibition
  end

  private

  def saved_exhibition_params
    params.require(:saved_exhibition).permit(:user_id, :exhibition_id)
  end
end
