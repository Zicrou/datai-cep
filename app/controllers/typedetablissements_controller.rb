class TypedetablissementsController < ApplicationController
  before_action :set_typedetablissement, only: [:show, :edit, :update, :destroy]
  access all: [:index, :show, :new, :edit, :create, :update, :destroy], user: :all

  # GET /typedetablissements
  def index
    @typedetablissements = Typedetablissement.all
  end

  # GET /typedetablissements/1
  def show
  end

  # GET /typedetablissements/new
  def new
    @typedetablissement = Typedetablissement.new
  end

  # GET /typedetablissements/1/edit
  def edit
  end

  # POST /typedetablissements
  def create
    @typedetablissement = Typedetablissement.new(typedetablissement_params)

    if @typedetablissement.save
      redirect_to @typedetablissement, notice: 'Typedetablissement was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /typedetablissements/1
  def update
    if @typedetablissement.update(typedetablissement_params)
      redirect_to @typedetablissement, notice: 'Typedetablissement was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /typedetablissements/1
  def destroy
    @typedetablissement.destroy
    redirect_to typedetablissements_url, notice: 'Typedetablissement was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_typedetablissement
      @typedetablissement = Typedetablissement.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def typedetablissement_params
      params.require(:typedetablissement).permit(:nom, :code)
    end
end
