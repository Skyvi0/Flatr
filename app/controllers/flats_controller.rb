class FlatsController < ApplicationController
  before_action :set_flat, only: [:show, :edit, :update, :destroy]

  # GET /flats
  def index
    @flats =flat.all
  end

  # GET /flats/1
  def show
  end

  # GET /flats/new
  def new
    @flat =Flat.new
  end

  # GET /flats/1/edit
 def edit
  end

  # POST /flats
  def create
    @flat =Flat.new(flat_params)

    if @flat.save
     # redirect_to @flat, notice: 'flat was successfully created.'
    else
      render :new
  end

 end

# PATCH/put /flat/1
def update
  if @flat.update (flat_params)
    redirect_to @flat, notice: 'flat was successfully update.'
   else
     render :edit
   end
end

#DELETE/flat/1
def destroy
  if @flat.destroy
    redirect_to flat_url, notice: 'flat was successfully detroyed.'
   else
      render :edit
    end
  end
end
