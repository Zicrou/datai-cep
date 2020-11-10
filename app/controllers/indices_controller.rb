class IndicesController < ApplicationController
  before_action :set_index, only: [:show, :edit, :update, :destroy]
  access all: [:index, :show, :new, :edit, :create, :update, :destroy], user: :all

  # GET /indices
  def index
    @indices = Indice.all
  end

  # GET /indices/1
  def show
  end

  # GET /indices/new
  def new
    @index = Indice.new
  end

  # GET /indices/1/edit
  def edit
  end

  # POST /indices
  def create
    @index = Indice.new(index_params)

    if @index.save
      redirect_to @index, notice: 'Indice was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /indices/1
  def update
    if @index.update(index_params)
      redirect_to @index, notice: 'Indice was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /indices/1
  def destroy
    @index.destroy
    redirect_to indices_url, notice: 'Indice was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_index
      @index = Indice.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def index_params
      params.require(:indice).permit(:name)
    end
end
