class EmploisController < ApplicationController
  before_action :set_emploi, only: [:show, :edit, :update, :destroy]
  access all: [:index, :show, :new, :edit, :create, :update, :destroy], user: :all

  # GET /emplois
  def index
    @emplois = Emploi.all
  end

  # GET /emplois/1
  def show
  end

  # GET /emplois/new
  def new
    @emploi = Emploi.new
  end

  # GET /emplois/1/edit
  def edit
  end

  # POST /emplois
  def create
    @emploi = Emploi.new(emploi_params)

    if @emploi.save
      redirect_to @emploi, notice: 'Emploi was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /emplois/1
  def update
    if @emploi.update(emploi_params)
      redirect_to @emploi, notice: 'Emploi was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /emplois/1
  def destroy
    @emploi.destroy
    redirect_to emplois_url, notice: 'Emploi was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_emploi
      @emploi = Emploi.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def emploi_params
      params.require(:emploi).permit(:name, :service_id)
    end
end
