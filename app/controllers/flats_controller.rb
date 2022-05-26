class FlatsController < ApplicationController
  before_action :set_flat, only: [:show, :create, :update, :destroy]

  skip_before_action :authenticate_user!, only: [:index]

 def index
    @flats = policy_scope(Flat).order(created_at: :desc)
  end

  def show
    @flat = Flat.find(params[:id])
    authorize @flat
  end

 # GET /flats/new
  #def new
    #@flat =Flat.new
  #end

  # GET /flats/1/edit
  #def edit
   #@flat =Flat.edit
  #end

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
  if @flat.update (params[:id])
    redirect_to @flat, notice: 'flat was successfully update.'
   else
     render :edit
   end
end

#DELETE/flat/1
def destroy
  if @flat.destroy (params[:id])
    redirect_to flat_url, notice: 'flat was successfully destroyed.'
   else
      render :edit
    end
  end

  def find_id
    @task = flat.find(params[:id])
  end

  # returns a hash of cat attributes that are safe
  def user_params
    params.require(:flat).permit(:title, :details, :completed)
  end

end
end
