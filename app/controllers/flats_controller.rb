class FlatsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index]


  def index
    @flats = policy_scope(Flat).order(created_at: :desc)
  end

  def show
    @flat = Flat.find(params[:id])
    authorize @flat
  end

end
