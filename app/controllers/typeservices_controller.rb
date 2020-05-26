class TypeservicesController < ApplicationController
  before_action :set_typeservice, only: [:show, :edit, :update, :destroy]
  layout 'configuration'

  # GET /typeservices
  # GET /typeservices.json
  def index
    @typeservices = Typeservice.all
  end

  # GET /typeservices/1
  # GET /typeservices/1.json
  def show
  end

  # GET /typeservices/new
  def new
    @typeservice = Typeservice.new
  end

  # GET /typeservices/1/edit
  def edit
  end

  # POST /typeservices
  # POST /typeservices.json
  def create
    @typeservice = Typeservice.new(typeservice_params)

    respond_to do |format|
      if @typeservice.save
        format.html { redirect_to @typeservice, notice: 'Typeservice was successfully created.' }
        format.json { render :show, status: :created, location: @typeservice }
      else
        format.html { render :new }
        format.json { render json: @typeservice.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /typeservices/1
  # PATCH/PUT /typeservices/1.json
  def update
    respond_to do |format|
      if @typeservice.update(typeservice_params)
        format.html { redirect_to @typeservice, notice: 'Typeservice was successfully updated.' }
        format.json { render :show, status: :ok, location: @typeservice }
      else
        format.html { render :edit }
        format.json { render json: @typeservice.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /typeservices/1
  # DELETE /typeservices/1.json
  def destroy
    @typeservice.destroy
    respond_to do |format|
      format.html { redirect_to typeservices_url, notice: 'Typeservice was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_typeservice
      @typeservice = Typeservice.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def typeservice_params
      params.require(:typeservice).permit(:name, :direction_id)
    end
end
