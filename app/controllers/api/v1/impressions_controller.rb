class Api::V1::ImpressionsController < ApplicationController
  def index
    @impressions = Impression.all
    render json: @impressions
  end

  def create
    @impression = Impression.create(impression_params)
    render json: @impression
  end

  private

  def impression_params
    params.require(:impression).permit(:user_id, :exhibition_id, :title, :content)
  end
end
