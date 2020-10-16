class ModePaiementsController < ApplicationController
  before_action :set_mode_paiement, only: [:show, :edit, :update, :destroy]
  access all: [:index, :show, :new, :edit, :create, :update, :destroy], user: :all

  # GET /mode_paiements
  def index
    @mode_paiements = ModePaiement.all
  end

  # GET /mode_paiements/1
  def show
  end

  # GET /mode_paiements/new
  def new
    @mode_paiement = ModePaiement.new
  end

  # GET /mode_paiements/1/edit
  def edit
  end

  # POST /mode_paiements
  def create
    @mode_paiement = ModePaiement.new(mode_paiement_params)

    if @mode_paiement.save
      redirect_to @mode_paiement, notice: 'Mode paiement was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /mode_paiements/1
  def update
    if @mode_paiement.update(mode_paiement_params)
      redirect_to @mode_paiement, notice: 'Mode paiement was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /mode_paiements/1
  def destroy
    @mode_paiement.destroy
    redirect_to mode_paiements_url, notice: 'Mode paiement was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_mode_paiement
      @mode_paiement = ModePaiement.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def mode_paiement_params
      params.require(:mode_paiement).permit(:name)
    end
end
