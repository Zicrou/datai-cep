class EmploisController < ApplicationController
  before_action :set_emploi, only: [:show, :edit, :update, :destroy]
layout 'configuration'
  # GET /emplois
  # GET /emplois.json
  def index
    @emplois = Emploi.all
  end

  # GET /emplois/1
  # GET /emplois/1.json
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
  # POST /emplois.json
  def create
    @emploi = Emploi.new(emploi_params)

    respond_to do |format|
      if @emploi.save
        format.html { redirect_to @emploi, notice: 'Emploi was successfully created.' }
        format.json { render :show, status: :created, location: @emploi }
      else
        format.html { render :new }
        format.json { render json: @emploi.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /emplois/1
  # PATCH/PUT /emplois/1.json
  def update
    respond_to do |format|
      if @emploi.update(emploi_params)
        format.html { redirect_to @emploi, notice: 'Emploi was successfully updated.' }
        format.json { render :show, status: :ok, location: @emploi }
      else
        format.html { render :edit }
        format.json { render json: @emploi.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /emplois/1
  # DELETE /emplois/1.json
  def destroy
    @emploi.destroy
    respond_to do |format|
      format.html { redirect_to emplois_url, notice: 'Emploi was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_emploi
      @emploi = Emploi.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def emploi_params
      params.require(:emploi).permit(:name)
    end
end
