class AdministrativesController < ApplicationController
  before_action :set_administrative, only: [:show, :edit, :update, :destroy]
  access all: [:index, :show, :new, :edit, :create, :update, :destroy, :filtered], user: :all

  # GET /administratives
  def index
    @id_agent = params["id_agent"]
    session[:id_agent] = @id_agent if !@id_agent.nil?

    @administratives = Administrative.where(agent_id: session[:id_agent])
  end

  # GET /administratives/1
  def show
  end

  # GET /administratives/new
  def new
    @administrative = Administrative.new
    @etablissements = Etablissement.all
    @directions = Direction.all
    @services = Service.all
    @emplois = Emploi.all
    @indices = Indice.all
    @grades = Grade.all

  end

  # GET /administratives/1/edit
  def edit
    @etablissements = Etablissement.all
    @directions = Direction.all
    @services = Service.all
    @emplois = Emploi.all
    @indices = Indice.all
    @grades = Grade.all
  end

  # POST /administratives
  def create
    @administrative = Administrative.new(administrative_params)
    @administrative.agent_id = session[:id_agent]
    
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
  

  #Customs methods
  def filtered
    @region = params[:regionId]
    @etablissement = params[:etablissementId]
    @direction = params[:directionId]
    @serviceId = params[:serviceId]
    @indiceId = params[:indiceId]
    #@domaine = params[:domaineId]
    if !@region.nil?
      @etablissements = Etablissement.where(region_id: @region)
      #puts "region= "+ @region
      respond_to do |format|
        format.json { render json: @etablissements }
      end

    elsif !@etablissement.nil?
      @directions = Direction.where(etablissement_id: @etablissement)
      #puts "domaine= "+ @domaine
      respond_to do |format|
        format.json { render json: @directions }
      end

    elsif !@direction.nil?
      @services = Service.where(direction_id: @direction)
      #puts "domaine= "+ @domaine
      respond_to do |format|
        format.json { render json: @services }
      end
    
    elsif !@serviceId.nil?
      @emplois = Emploi.where(service_id: @serviceId)
      #puts "domaine= "+ @domaine
      respond_to do |format|
        format.json { render json: @emplois }
      end
    elsif !@indiceId.nil?
      @grades = Grade.where(indice_id: @indiceId)
      #puts "domaine= "+ @domaine
      respond_to do |format|
        format.json { render json: @grades }
      end
      
    end
    
    #render :index
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_administrative
      @administrative = Administrative.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def administrative_params
      params.require(:administrative).permit(:agent_id, :region_id, :typedetablissement_id, :etablissement_id, :direction_id, :service_id, :emploi_id, :postedepaie_id, :echellon_id, :corp_id, :indice_id, :grade_id)
    end
end
