class TitresController < ApplicationController
  before_action :set_titre, only: [:show, :edit, :update, :destroy]
  access all: [:index, :show, :new, :edit, :create, :update, :destroy], user: :all

  # GET /titres
  def index
    @titres = Titre.all
  end

  # GET /titres/1
  def show
  end

  # GET /titres/new
  def new
    @titre = Titre.new
  end

  # GET /titres/1/edit
  def edit
  end

  # POST /titres
  def create
    @titre = Titre.new(titre_params)

    if @titre.save
      redirect_to @titre, notice: 'Titre was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /titres/1
  def update
    if @titre.update(titre_params)
      redirect_to @titre, notice: 'Titre was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /titres/1
  def destroy
    @titre.destroy
    redirect_to titres_url, notice: 'Titre was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_titre
      @titre = Titre.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def titre_params
      params.require(:titre).permit(:name)
    end
end
