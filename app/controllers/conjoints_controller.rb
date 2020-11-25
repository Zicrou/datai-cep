class ConjointsController < ApplicationController
  before_action :set_conjoint, only: [:show, :edit, :update, :destroy]
  access all: [:index, :show, :new, :edit, :create, :update, :destroy], user: :all

  # GET /conjoints
  def index
    @id_agent = params["id_agent"]
    session[:id_agent] = @id_agent if !@id_agent.nil?

    @conjoints = Conjoint.where(agent_id: session[:id_agent])
  
  end

  # GET /conjoints/1
  def show
  end

  # GET /conjoints/new
  def new
    @conjoint = Conjoint.new
  end

  # GET /conjoints/1/edit
  def edit
  end

  # POST /conjoints
  def create
    @conjoint = Conjoint.new(conjoint_params)
    @conjoint.agent_id = session[:id_agent]
    if @conjoint.save
      redirect_to @conjoint, notice: 'Conjoint was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /conjoints/1
  def update
    if @conjoint.update(conjoint_params)
      redirect_to @conjoint, notice: 'Conjoint was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /conjoints/1
  def destroy
    @conjoint.destroy
    redirect_to conjoints_url, notice: 'Conjoint was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_conjoint
      @conjoint = Conjoint.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def conjoint_params
      params.require(:conjoint).permit(:nom, :prenom, :photo_certificat_mariage, :numero_de_reference, :date_mariage, :agent_id)
    end
end
