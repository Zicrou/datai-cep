class AdministrativesController < ApplicationController
  before_action :set_administrative, only: [:show, :edit, :update, :destroy]
  access all: [:index, :show, :new, :edit, :create, :update, :destroy], user: :all

  # GET /administratives
  def index
    @administratives = Administrative.all
  end

  # GET /administratives/1
  def show
  end

  # GET /administratives/new
  def new
    @administrative = Administrative.new
  end

  # GET /administratives/1/edit
  def edit
  end

  # POST /administratives
  def create
    @administrative = Administrative.new(administrative_params)

    if @administrative.save
      redirect_to @administrative, notice: 'Administrative was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /administratives/1
  def update
    if @administrative.update(administrative_params)
      redirect_to @administrative, notice: 'Administrative was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /administratives/1
  def destroy
    @administrative.destroy
    redirect_to administratives_url, notice: 'Administrative was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_administrative
      @administrative = Administrative.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def administrative_params
      params.require(:administrative).permit(:agent_id, :region_id, :typedetablissement_id, :etablissement_id, :direction_id, :service_id, :emploi_id, :postedepaie_id, :echellon_id, :corp_id, :grade_id)
    end
end
