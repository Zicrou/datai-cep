class EnfantsController < ApplicationController
  before_action :set_enfant, only: [:show, :edit, :update, :destroy]
  access all: [:index, :show, :new, :edit, :create, :update, :destroy], user: :all

  # GET /enfants
  def index
    @enfants = Enfant.all
  end

  # GET /enfants/1
  def show
  end

  # GET /enfants/new
  def new
    @enfant = Enfant.new
  end

  # GET /enfants/1/edit
  def edit
  end

  # POST /enfants
  def create
    @enfant = Enfant.new(enfant_params)

    if @enfant.save
      redirect_to @enfant, notice: 'Enfant was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /enfants/1
  def update
    if @enfant.update(enfant_params)
      redirect_to @enfant, notice: 'Enfant was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /enfants/1
  def destroy
    @enfant.destroy
    redirect_to enfants_url, notice: 'Enfant was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_enfant
      @enfant = Enfant.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def enfant_params
      params.require(:enfant).permit(:nom, :prenom, :date_naissance, :agent_id)
    end
end
