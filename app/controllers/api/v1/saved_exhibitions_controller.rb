class Api::V1::SavedExhibitionsController < ApplicationController
  def index
    @saved_exhibitions = SavedExhibition.all
    render json: @saved_exhibitions
  end

  def create
    @saved_exhibition = SavedExhibition.create(saved_exhibition_params)
    render json: @saved_exhibition
  end

  private

  def saved_exhibition_params
    params.require(:saved_exhibition).permit(:user_id, :exhibition_id)
  end
end
