class ClassesController < ApplicationController
  before_action :set_class, only: [:show, :edit, :update, :destroy]
  access all: [:index, :show, :new, :edit, :create, :update, :destroy], user: :all

  # GET /classes
  def index
    @classes = Classe.all
  end

  # GET /classes/1
  def show
  end

  # GET /classes/new
  def new
    @class = Classe.new
  end

  # GET /classes/1/edit
  def edit
  end

  # POST /classes
  def create
    @class = Classe.new(class_params)

    if @class.save
      redirect_to @class, notice: 'Classe was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /classes/1
  def update
    if @class.update(class_params)
      redirect_to @class, notice: 'Classe was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /classes/1
  def destroy
    @class.destroy
    redirect_to classes_url, notice: 'Classe was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_class
      @class = Classe.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def class_params
      params.require(:class).permit(:name, :echellon_id)
    end
end
