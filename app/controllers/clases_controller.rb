class ClasesController < ApplicationController
  before_action :set_clase, only: [:show, :edit, :update, :destroy]
  access all: [:index, :show, :new, :edit, :create, :update, :destroy], user: :all

  # GET /clases
  def index
    @clases = Clase.all
  end

  # GET /clases/1
  def show
  end

  # GET /clases/new
  def new
    @clase = Clase.new
  end

  # GET /clases/1/edit
  def edit
  end

  # POST /clases
  def create
    @clase = Clase.new(clase_params)

    if @clase.save
      redirect_to @clase, notice: 'Clase was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /clases/1
  def update
    if @clase.update(clase_params)
      redirect_to @clase, notice: 'Clase was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /clases/1
  def destroy
    @clase.destroy
    redirect_to clases_url, notice: 'Clase was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_clase
      @clase = Clase.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def clase_params
      params.require(:clase).permit(:name, :echellon_id)
    end
end
