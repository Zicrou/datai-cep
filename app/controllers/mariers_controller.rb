class MariersController < ApplicationController
  before_action :set_marier, only: [:show, :edit, :update, :destroy]
  access all: [:index, :show, :new, :edit, :create, :update, :destroy], user: :all

  # GET /mariers
  def index
    @mariers = Marier.all
  end

  # GET /mariers/1
  def show
  end

  # GET /mariers/new
  def new
    @marier = Marier.new
  end

  # GET /mariers/1/edit
  def edit
  end

  # POST /mariers
  def create
    @marier = Marier.new(marier_params)

    if @marier.save
      redirect_to @marier, notice: 'Marier was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /mariers/1
  def update
    if @marier.update(marier_params)
      redirect_to @marier, notice: 'Marier was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /mariers/1
  def destroy
    @marier.destroy
    redirect_to mariers_url, notice: 'Marier was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_marier
      @marier = Marier.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def marier_params
      params.require(:marier).permit(:name)
    end
end
