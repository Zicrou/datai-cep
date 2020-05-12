class ModePaiementsController < ApplicationController
  before_action :set_mode_paiement, only: [:show, :edit, :update, :destroy]

  # GET /mode_paiements
  # GET /mode_paiements.json
  def index
    @mode_paiements = ModePaiement.all
  end

  # GET /mode_paiements/1
  # GET /mode_paiements/1.json
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
  # POST /mode_paiements.json
  def create
    @mode_paiement = ModePaiement.new(mode_paiement_params)

    respond_to do |format|
      if @mode_paiement.save
        format.html { redirect_to @mode_paiement, notice: 'Mode paiement was successfully created.' }
        format.json { render :show, status: :created, location: @mode_paiement }
      else
        format.html { render :new }
        format.json { render json: @mode_paiement.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /mode_paiements/1
  # PATCH/PUT /mode_paiements/1.json
  def update
    respond_to do |format|
      if @mode_paiement.update(mode_paiement_params)
        format.html { redirect_to @mode_paiement, notice: 'Mode paiement was successfully updated.' }
        format.json { render :show, status: :ok, location: @mode_paiement }
      else
        format.html { render :edit }
        format.json { render json: @mode_paiement.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /mode_paiements/1
  # DELETE /mode_paiements/1.json
  def destroy
    @mode_paiement.destroy
    respond_to do |format|
      format.html { redirect_to mode_paiements_url, notice: 'Mode paiement was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_mode_paiement
      @mode_paiement = ModePaiement.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def mode_paiement_params
      params.require(:mode_paiement).permit(:name)
    end
end
