class EchellonsController < ApplicationController
  before_action :set_echellon, only: [:show, :edit, :update, :destroy]
  layout 'configuration'

  # GET /echellons
  # GET /echellons.json
  def index
    @echellons = Echellon.all
  end

  # GET /echellons/1
  # GET /echellons/1.json
  def show
  end

  # GET /echellons/new
  def new
    @echellon = Echellon.new
  end

  # GET /echellons/1/edit
  def edit
  end

  # POST /echellons
  # POST /echellons.json
  def create
    @echellon = Echellon.new(echellon_params)

    respond_to do |format|
      if @echellon.save
        format.html { redirect_to @echellon, notice: 'Echellon was successfully created.' }
        format.json { render :show, status: :created, location: @echellon }
      else
        format.html { render :new }
        format.json { render json: @echellon.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /echellons/1
  # PATCH/PUT /echellons/1.json
  def update
    respond_to do |format|
      if @echellon.update(echellon_params)
        format.html { redirect_to @echellon, notice: 'Echellon was successfully updated.' }
        format.json { render :show, status: :ok, location: @echellon }
      else
        format.html { render :edit }
        format.json { render json: @echellon.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /echellons/1
  # DELETE /echellons/1.json
  def destroy
    @echellon.destroy
    respond_to do |format|
      format.html { redirect_to echellons_url, notice: 'Echellon was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_echellon
      @echellon = Echellon.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def echellon_params
      params.require(:echellon).permit(:code, :name)
    end
end
