class TypeindicesController < ApplicationController
  before_action :set_typeindex, only: [:show, :edit, :update, :destroy]
  access all: [:index, :show, :new, :edit, :create, :update, :destroy], user: :all

  # GET /typeindices
  def index
    @typeindices = Typeindice.all
  end

  # GET /typeindices/1
  def show
  end

  # GET /typeindices/new
  def new
    @typeindex = Typeindice.new
  end

  # GET /typeindices/1/edit
  def edit
  end

  # POST /typeindices
  def create
    @typeindex = Typeindice.new(typeindex_params)

    if @typeindex.save
      redirect_to @typeindex, notice: 'Typeindice was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /typeindices/1
  def update
    if @typeindex.update(typeindex_params)
      redirect_to @typeindex, notice: 'Typeindice was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /typeindices/1
  def destroy
    @typeindex.destroy
    redirect_to typeindices_url, notice: 'Typeindice was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_typeindex
      @typeindex = Typeindice.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def typeindex_params
      params.require(:typeindice).permit(:name)
    end
end
