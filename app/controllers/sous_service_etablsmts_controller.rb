class SousServiceEtablsmtsController < ApplicationController
  before_action :set_sous_service_etablsmt, only: [:show, :edit, :update, :destroy]

  # GET /sous_service_etablsmts
  # GET /sous_service_etablsmts.json
  def index
    @sous_service_etablsmts = SousServiceEtablsmt.all
  end

  # GET /sous_service_etablsmts/1
  # GET /sous_service_etablsmts/1.json
  def show
  end

  # GET /sous_service_etablsmts/new
  def new
    @sous_service_etablsmt = SousServiceEtablsmt.new
  end

  # GET /sous_service_etablsmts/1/edit
  def edit
  end

  # POST /sous_service_etablsmts
  # POST /sous_service_etablsmts.json
  def create
    @sous_service_etablsmt = SousServiceEtablsmt.new(sous_service_etablsmt_params)

    respond_to do |format|
      if @sous_service_etablsmt.save
        format.html { redirect_to @sous_service_etablsmt, notice: 'Sous service etablsmt was successfully created.' }
        format.json { render :show, status: :created, location: @sous_service_etablsmt }
      else
        format.html { render :new }
        format.json { render json: @sous_service_etablsmt.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /sous_service_etablsmts/1
  # PATCH/PUT /sous_service_etablsmts/1.json
  def update
    respond_to do |format|
      if @sous_service_etablsmt.update(sous_service_etablsmt_params)
        format.html { redirect_to @sous_service_etablsmt, notice: 'Sous service etablsmt was successfully updated.' }
        format.json { render :show, status: :ok, location: @sous_service_etablsmt }
      else
        format.html { render :edit }
        format.json { render json: @sous_service_etablsmt.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /sous_service_etablsmts/1
  # DELETE /sous_service_etablsmts/1.json
  def destroy
    @sous_service_etablsmt.destroy
    respond_to do |format|
      format.html { redirect_to sous_service_etablsmts_url, notice: 'Sous service etablsmt was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_sous_service_etablsmt
      @sous_service_etablsmt = SousServiceEtablsmt.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def sous_service_etablsmt_params
      params.require(:sous_service_etablsmt).permit(:name, :service_etablsmt_id)
    end
end
