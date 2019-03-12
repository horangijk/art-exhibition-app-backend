class Api::V1::ExhibitionsController < ApplicationController

  def index
    @exhibitions = Exhibition.all
    render json: @exhibitions
  end

end
