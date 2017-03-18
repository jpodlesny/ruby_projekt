class LekisController < ApplicationController
  before_action :set_leki, only: [:show, :edit, :update, :destroy]

  # GET /lekis
  # GET /lekis.json
  def index
    @lekis = Leki.all
  end

  # GET /lekis/1
  # GET /lekis/1.json
  def show
  end

  # GET /lekis/new
  def new
    @leki = Leki.new
  end

  # GET /lekis/1/edit
  def edit
  end

  # POST /lekis
  # POST /lekis.json
  def create
    @leki = Leki.new(leki_params)

    respond_to do |format|
      if @leki.save
        format.html { redirect_to @leki, notice: 'Leki was successfully created.' }
        format.json { render :show, status: :created, location: @leki }
      else
        format.html { render :new }
        format.json { render json: @leki.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /lekis/1
  # PATCH/PUT /lekis/1.json
  def update
    respond_to do |format|
      if @leki.update(leki_params)
        format.html { redirect_to @leki, notice: 'Leki was successfully updated.' }
        format.json { render :show, status: :ok, location: @leki }
      else
        format.html { render :edit }
        format.json { render json: @leki.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /lekis/1
  # DELETE /lekis/1.json
  def destroy
    @leki.destroy
    respond_to do |format|
      format.html { redirect_to lekis_url, notice: 'Leki was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_leki
      @leki = Leki.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def leki_params
      params.require(:leki).permit(:nazwa, :cena)
    end
end
