class BilleteursController < ApplicationController
  before_action :set_billeteur, only: [:show, :edit, :update, :destroy]
  access all: [:index, :show, :new, :edit, :create, :update, :destroy], user: :all

  # GET /billeteurs
  def index
    @billeteurs = Billeteur.all
  end

  # GET /billeteurs/1
  def show
  end

  # GET /billeteurs/new
  def new
    @billeteur = Billeteur.new
  end

  # GET /billeteurs/1/edit
  def edit
  end

  # POST /billeteurs
  def create
    @billeteur = Billeteur.new(billeteur_params)

    if @billeteur.save
      redirect_to @billeteur, notice: 'Billeteur was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /billeteurs/1
  def update
    if @billeteur.update(billeteur_params)
      redirect_to @billeteur, notice: 'Billeteur was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /billeteurs/1
  def destroy
    @billeteur.destroy
    redirect_to billeteurs_url, notice: 'Billeteur was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_billeteur
      @billeteur = Billeteur.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def billeteur_params
      params.require(:billeteur).permit(:code, :nom_billeteur, :matricule)
    end
end
