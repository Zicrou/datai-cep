class TypeservicesController < ApplicationController
  before_action :set_typeservice, only: [:show, :edit, :update, :destroy]
  access all: [:index, :show, :new, :edit, :create, :update, :destroy], user: :all

  # GET /typeservices
  def index
    @typeservices = Typeservice.all
  end

  # GET /typeservices/1
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
  def create
    @typeservice = Typeservice.new(typeservice_params)

    if @typeservice.save
      redirect_to @typeservice, notice: 'Typeservice was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /typeservices/1
  def update
    if @typeservice.update(typeservice_params)
      redirect_to @typeservice, notice: 'Typeservice was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /typeservices/1
  def destroy
    @typeservice.destroy
    redirect_to typeservices_url, notice: 'Typeservice was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_typeservice
      @typeservice = Typeservice.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def typeservice_params
      params.require(:typeservice).permit(:name)
    end
end
