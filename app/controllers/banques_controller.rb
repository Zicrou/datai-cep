class BanquesController < ApplicationController
  before_action :set_banque, only: [:show, :edit, :update, :destroy]
  access all: [:index, :show, :new, :edit, :create, :update, :destroy], user: :all

  # GET /banques
  def index
    @banques = Banque.all
  end

  # GET /banques/1
  def show
  end

  # GET /banques/new
  def new
    @banque = Banque.new
  end

  # GET /banques/1/edit
  def edit
  end

  # POST /banques
  def create
    @banque = Banque.new(banque_params)

    if @banque.save
      redirect_to @banque, notice: 'Banque was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /banques/1
  def update
    if @banque.update(banque_params)
      redirect_to @banque, notice: 'Banque was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /banques/1
  def destroy
    @banque.destroy
    redirect_to banques_url, notice: 'Banque was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_banque
      @banque = Banque.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def banque_params
      params.require(:banque).permit(:name, :code)
    end
end
