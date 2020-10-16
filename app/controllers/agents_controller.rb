class AgentsController < ApplicationController
  before_action :set_agent, only: [:show, :edit, :update, :destroy]
  access all: [:index, :show, :new, :edit, :create, :update, :destroy, :agencebybanque, :departementbyregion], user: :all

  # GET /agents
  def index
    @agents = Agent.all
  end

  # GET /agents/1
  def show
    #pry
  end

  # GET /agents/new
  def new
    @agent = Agent.new
    @agences = Agence.all
    @departements = Departement.all
  end

  # GET /agents/1/edit
  def edit
    @agences = Agence.all
    @departements = Departement.all
  end

  # POST /agents
  def create
    @mode_paiement = params[:agent][:mode_paiement_id]
    @billeteur = params[:agent][:billeteur_id]
    @banque = params[:agent][:banque_id]
    @agence = params[:agent][:agence_id]
    @numcomptebancaire = params[:agent][:numcomptebancaire]
    #pry
    if @mode_paiement == ""
      @msg_erreur = 'Veuillez choisir un mode de paiement'
      #puts @msg = "I am here"
      render :edit
      #pry
    elsif (@mode_paiement == "1") and (@billeteur == "")
      @msg_erreur = 'Veuillez completer les informations du billeteur'
      #puts @msg = "I am here now"
      render :edit
      #pry
    elsif (@mode_paiement == "2")  and (@banque == "" or agence == "" or @numcomptebancaire == "")
      @msg_erreur = 'Veuillez completer les informations banquaires'
      #puts @msg = "I am here again"
      render :edit
      #pry
    else
      #pry
      @agent = Agent.new(agent_params)
      @agent.save
      redirect_to @agent, notice: 'Agent was successfully created.'
    end
  end

  # PATCH/PUT /agents/1
  def update
    @mode_paiement = params[:agent][:mode_paiement_id]
    @billeteur = params[:agent][:billeteur_id]
    @banque = params[:agent][:banque_id]
    @agence = params[:agent][:agence_id]
    @numcomptebancaire = params[:agent][:numcomptebancaire]
    #pry
    if @mode_paiement == ""
      @msg_erreur = 'Veuillez choisir un mode de paiement'
      #puts @msg = "I am here"
      render :edit
      #pry
    elsif (@mode_paiement == "1") and (@billeteur == "")
      @msg_erreur = 'Veuillez completer les informations du billeteur'
      #puts @msg = "I am here now"
      render :edit
      #pry
    elsif (@mode_paiement == "2")  and (@banque == "" or agence == "" or @numcomptebancaire == "")
      @msg_erreur = 'Veuillez completer les informations sur la banque'
      #puts @msg = "I am here again"
      render :edit
      #pry
    else
      #pry
      @agent.update(agent_params)
      redirect_to @agent, notice: 'Agent was successfully updated.'
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


  def departementbyregion
    @region = params[:regionID]
    if !@region.nil?
      @departements = Departement.where(region_id: @region)
      
      respond_to do |format|
        format.json { render json: @departements }
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
