class ExpatriesController < ApplicationController
  before_action :set_expatry, only: [:show, :edit, :update, :destroy]

  # GET /expatries
  # GET /expatries.json
  def index
    @expatries = Expatrie.all
  end

  # GET /expatries/1
  # GET /expatries/1.json
  def show
  end

  # GET /expatries/new
  def new
    @expatry = Expatrie.new
  end

  # GET /expatries/1/edit
  def edit
  end

  # POST /expatries
  # POST /expatries.json
  def create
    @expatry = Expatrie.new(expatry_params)

    respond_to do |format|
      if @expatry.save
        format.html { redirect_to @expatry, notice: 'Expatrie was successfully created.' }
        format.json { render :show, status: :created, location: @expatry }
      else
        format.html { render :new }
        format.json { render json: @expatry.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /expatries/1
  # PATCH/PUT /expatries/1.json
  def update
    respond_to do |format|
      if @expatry.update(expatry_params)
        format.html { redirect_to @expatry, notice: 'Expatrie was successfully updated.' }
        format.json { render :show, status: :ok, location: @expatry }
      else
        format.html { render :edit }
        format.json { render json: @expatry.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /expatries/1
  # DELETE /expatries/1.json
  def destroy
    @expatry.destroy
    respond_to do |format|
      format.html { redirect_to expatries_url, notice: 'Expatrie was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_expatry
      @expatry = Expatrie.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def expatry_params
      params.require(:expatrie).permit(:code, :name)
    end
end
