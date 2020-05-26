class PreststionsController < ApplicationController
  before_action :set_preststion, only: [:show, :edit, :update, :destroy]
  layout 'configuration'

  # GET /preststions
  # GET /preststions.json
  def index
    @preststions = Preststion.all
  end

  # GET /preststions/1
  # GET /preststions/1.json
  def show
  end

  # GET /preststions/new
  def new
    @preststion = Preststion.new
  end

  # GET /preststions/1/edit
  def edit
  end

  # POST /preststions
  # POST /preststions.json
  def create
    @preststion = Preststion.new(preststion_params)

    respond_to do |format|
      if @preststion.save
        format.html { redirect_to @preststion, notice: 'Preststion was successfully created.' }
        format.json { render :show, status: :created, location: @preststion }
      else
        format.html { render :new }
        format.json { render json: @preststion.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /preststions/1
  # PATCH/PUT /preststions/1.json
  def update
    respond_to do |format|
      if @preststion.update(preststion_params)
        format.html { redirect_to @preststion, notice: 'Preststion was successfully updated.' }
        format.json { render :show, status: :ok, location: @preststion }
      else
        format.html { render :edit }
        format.json { render json: @preststion.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /preststions/1
  # DELETE /preststions/1.json
  def destroy
    @preststion.destroy
    respond_to do |format|
      format.html { redirect_to preststions_url, notice: 'Preststion was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_preststion
      @preststion = Preststion.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def preststion_params
      params.require(:preststion).permit(:code, :name)
    end
end
