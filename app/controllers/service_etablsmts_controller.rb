class ServiceEtablsmtsController < ApplicationController
  before_action :set_service_etablsmt, only: [:show, :edit, :update, :destroy]
  layout 'configuration'

  # GET /service_etablsmts
  # GET /service_etablsmts.json
  def index
    @service_etablsmts = ServiceEtablsmt.all
  end

  # GET /service_etablsmts/1
  # GET /service_etablsmts/1.json
  def show
  end

  # GET /service_etablsmts/new
  def new
    @service_etablsmt = ServiceEtablsmt.new
  end

  # GET /service_etablsmts/1/edit
  def edit
  end

  # POST /service_etablsmts
  # POST /service_etablsmts.json
  def create
    @service_etablsmt = ServiceEtablsmt.new(service_etablsmt_params)

    respond_to do |format|
      if @service_etablsmt.save
        format.html { redirect_to @service_etablsmt, notice: 'Service etablsmt was successfully created.' }
        format.json { render :show, status: :created, location: @service_etablsmt }
      else
        format.html { render :new }
        format.json { render json: @service_etablsmt.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /service_etablsmts/1
  # PATCH/PUT /service_etablsmts/1.json
  def update
    respond_to do |format|
      if @service_etablsmt.update(service_etablsmt_params)
        format.html { redirect_to @service_etablsmt, notice: 'Service etablsmt was successfully updated.' }
        format.json { render :show, status: :ok, location: @service_etablsmt }
      else
        format.html { render :edit }
        format.json { render json: @service_etablsmt.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /service_etablsmts/1
  # DELETE /service_etablsmts/1.json
  def destroy
    @service_etablsmt.destroy
    respond_to do |format|
      format.html { redirect_to service_etablsmts_url, notice: 'Service etablsmt was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_service_etablsmt
      @service_etablsmt = ServiceEtablsmt.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def service_etablsmt_params
      params.require(:service_etablsmt).permit(:name, :etablissement)
    end
end
