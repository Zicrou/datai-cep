class PostedepaiesController < ApplicationController
  before_action :set_postedepaie, only: [:show, :edit, :update, :destroy]
  access all: [:index, :show, :new, :edit, :create, :update, :destroy], user: :all

  # GET /postedepaies
  def index
    @postedepaies = Postedepaie.all
  end

  # GET /postedepaies/1
  def show
  end

  # GET /postedepaies/new
  def new
    @postedepaie = Postedepaie.new
  end

  # GET /postedepaies/1/edit
  def edit
  end

  # POST /postedepaies
  def create
    @postedepaie = Postedepaie.new(postedepaie_params)

    if @postedepaie.save
      redirect_to @postedepaie, notice: 'Postedepaie was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /postedepaies/1
  def update
    if @postedepaie.update(postedepaie_params)
      redirect_to @postedepaie, notice: 'Postedepaie was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /postedepaies/1
  def destroy
    @postedepaie.destroy
    redirect_to postedepaies_url, notice: 'Postedepaie was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_postedepaie
      @postedepaie = Postedepaie.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def postedepaie_params
      params.require(:postedepaie).permit(:code, :name)
    end
end
