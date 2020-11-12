class DirectionsController < ApplicationController
  before_action :set_direction, only: [:show, :edit, :update, :destroy]
  access all: [:index, :show, :new, :edit, :create, :update, :destroy], user: :all

  # GET /directions
  def index
    @directions = Direction.all
  end

  # GET /directions/1
  def show
  end

  # GET /directions/new
  def new
    @direction = Direction.new
  end

  # GET /directions/1/edit
  def edit
  end

  # POST /directions
  def create
    @direction = Direction.new(direction_params)

    if @direction.save
      redirect_to @direction, notice: 'Direction was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /directions/1
  def update
    if @direction.update(direction_params)
      redirect_to @direction, notice: 'Direction was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /directions/1
  def destroy
    @direction.destroy
    redirect_to directions_url, notice: 'Direction was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_direction
      @direction = Direction.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def direction_params
      params.require(:direction).permit(:name, :etablissement_id)
    end
end
