class CorpsController < ApplicationController
  before_action :set_corp, only: [:show, :edit, :update, :destroy]
  access all: [:index, :show, :new, :edit, :create, :update, :destroy], user: :all

  # GET /corps
  def index
    @corps = Corp.all
  end

  # GET /corps/1
  def show
  end

  # GET /corps/new
  def new
    @corp = Corp.new
  end

  # GET /corps/1/edit
  def edit
  end

  # POST /corps
  def create
    @corp = Corp.new(corp_params)

    if @corp.save
      redirect_to @corp, notice: 'Corp was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /corps/1
  def update
    if @corp.update(corp_params)
      redirect_to @corp, notice: 'Corp was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /corps/1
  def destroy
    @corp.destroy
    redirect_to corps_url, notice: 'Corp was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_corp
      @corp = Corp.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def corp_params
      params.require(:corp).permit(:code, :name)
    end
end
