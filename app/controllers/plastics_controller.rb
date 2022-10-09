class PlasticsController < ApplicationController
  before_action :set_plastic, only: %i[ show edit update destroy ]

  # GET /plastics or /plastics.json
  def index
    @plastics = Plastic.all
    
  end

  # GET /plastics/1 or /plastics/1.json
  def show
    #nie wiem czy dobrze
    #@plastic.image.attach(params[:image])
    #redirect_to Current.plastic.image.url
    
  end

  # GET /plastics/new
  def new
    @plastic = Plastic.new
  end

  # GET /plastics/1/edit
  def edit
    @plastic.image.attach(params[:image])
  end

  # POST /plastics or /plastics.json
  def create
    @plastic = Plastic.new(plastic_params)

    respond_to do |format|
      if @plastic.save
        format.html { redirect_to plastic_url(@plastic), notice: "Plastic was successfully created." }
        format.json { render :show, status: :created, location: @plastic }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @plastic.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /plastics/1 or /plastics/1.json
  def update
    respond_to do |format|
      if @plastic.update(plastic_params)
        format.html { redirect_to plastic_url(@plastic), notice: "Plastic was successfully updated." }
        format.json { render :show, status: :ok, location: @plastic }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @plastic.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /plastics/1 or /plastics/1.json
  def destroy
    @plastic.destroy

    respond_to do |format|
      format.html { redirect_to plastics_url, notice: "Plastic was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_plastic
      @plastic = Plastic.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def plastic_params
      params.require(:plastic).permit(:name, :image, :mold1, :mold1_cavity, :mold1_weight, :mold1_speed, :mold2, :mold2_cavity, :mold2_weight, :mold2_speed, :description)
    end

    
end
