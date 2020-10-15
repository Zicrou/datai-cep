class AgentsController < ApplicationController
  before_action :set_agent, only: [:show, :edit, :update, :destroy]
  access all: [:index, :show, :new, :edit, :create, :update, :destroy, :agencebybanque], user: :all

  # GET /agents
  def index
    @agents = Agent.all
  end

  # GET /agents/1
  def show
  end

  # GET /agents/new
  def new
    @agent = Agent.new
    @agences = Agence.all
  end

  # GET /agents/1/edit
  def edit
  end

  # POST /agents
  def create
    puts @agent.banque_id.nil? @agent.agence_id.nil? @agent.numcomptebancaire.nil?
    @agent = Agent.new(agent_params)

    if @agent.save
      redirect_to @agent, notice: 'Agent was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /agents/1
  def update
    puts @agent.banque_id.nil? @agent.agence_id.nil? @agent.numcomptebancaire.nil?

    if @agent.update(agent_params)
      redirect_to @agent, notice: 'Agent was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /agents/1
  def destroy
    @agent.destroy
    redirect_to agents_url, notice: 'Agent was successfully destroyed.'
  end

  # Costums Methode
  def agencebybanque
    @banque = params[:banqueID]
    if !@banque.nil?
      @agences = Agence.where(banque_id: @banque)
      #puts "banque= " + @banque
      #puts  @agences
      respond_to do |format|
        format.json { render json: @agences }
      end
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_agent
      @agent = Agent.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def agent_params
      params.require(:agent).permit(:matricule, :nom, :prenom, :date_naissance, :date_pec, :date_recrutement, :lieu_naissance, :nationalite, :email, :telephone, :adresse, :marier_id, :titre_id, :sexe_id, :region_id, :departement_id, :mode_paiement_id, :banque_id, :agence_id, :billeteur_id, :numcomptebancaire)
    end
end
