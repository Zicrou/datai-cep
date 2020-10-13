class AgencesController < ApplicationController
  before_action :set_agence, only: [:show, :edit, :update, :destroy]
  access all: [:index, :show, :new, :edit, :create, :update, :destroy], user: :all

  # GET /agences
  def index
    @agences = Agence.all
  end

  # GET /agences/1
  def show
  end

  # GET /agences/new
  def new
    @agence = Agence.new
  end

  # GET /agences/1/edit
  def edit
  end

  # POST /agences
  def create
    @agence = Agence.new(agence_params)

    if @agence.save
      redirect_to @agence, notice: 'Agence was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /agences/1
  def update
    if @agence.update(agence_params)
      redirect_to @agence, notice: 'Agence was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /agences/1
  def destroy
    @agence.destroy
    redirect_to agences_url, notice: 'Agence was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_agence
      @agence = Agence.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def agence_params
      params.require(:agence).permit(:name, :code_agence, :banque_id)
    end
end
