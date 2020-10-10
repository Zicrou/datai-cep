class SexesController < ApplicationController
  before_action :set_sex, only: [:show, :edit, :update, :destroy]
  access all: [:index, :show, :new, :edit, :create, :update, :destroy], user: :all

  # GET /sexes
  def index
    @sexes = Sexe.all
  end

  # GET /sexes/1
  def show
  end

  # GET /sexes/new
  def new
    @sex = Sexe.new
  end

  # GET /sexes/1/edit
  def edit
  end

  # POST /sexes
  def create
    @sex = Sexe.new(sex_params)

    if @sex.save
      redirect_to @sex, notice: 'Sexe was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /sexes/1
  def update
    if @sex.update(sex_params)
      redirect_to @sex, notice: 'Sexe was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /sexes/1
  def destroy
    @sex.destroy
    redirect_to sexes_url, notice: 'Sexe was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_sex
      @sex = Sexe.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def sex_params
      params.require(:sexe).permit(:name)
    end
end
