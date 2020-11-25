class EchellonsController < ApplicationController
  before_action :set_echellon, only: [:show, :edit, :update, :destroy]
  access all: [:index, :show, :new, :edit, :create, :update, :destroy], user: :all

  # GET /echellons
  def index
    @echellons = Echellon.all
  end

  # GET /echellons/1
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
  def create
    @echellon = Echellon.new(echellon_params)

    if @echellon.save
      redirect_to @echellon, notice: 'Echellon was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /echellons/1
  def update
    if @echellon.update(echellon_params)
      redirect_to @echellon, notice: 'Echellon was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /echellons/1
  def destroy
    @echellon.destroy
    redirect_to echellons_url, notice: 'Echellon was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_echellon
      @echellon = Echellon.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def echellon_params
      params.require(:echellon).permit(:code, :clase_id)
    end
end
