class KendaraansController < ApplicationController
  before_action :set_kendaraan, only: %i[ show edit update destroy ]

  # GET /kendaraans or /kendaraans.json
  def index
    @kendaraans = Kendaraan.all
  end

  # GET /kendaraans/1 or /kendaraans/1.json
  def show
  end

  # GET /kendaraans/new
  def new
    @kendaraan = Kendaraan.new
  end

  # GET /kendaraans/1/edit
  def edit
  end

  # POST /kendaraans or /kendaraans.json
  def create
    @kendaraan = Kendaraan.new(kendaraan_params)

    respond_to do |format|
      if @kendaraan.save
        format.html { redirect_to kendaraan_url(@kendaraan), notice: "Kendaraan was successfully created." }
        format.json { render :show, status: :created, location: @kendaraan }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @kendaraan.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /kendaraans/1 or /kendaraans/1.json
  def update
    respond_to do |format|
      if @kendaraan.update(kendaraan_params)
        format.html { redirect_to kendaraan_url(@kendaraan), notice: "Kendaraan was successfully updated." }
        format.json { render :show, status: :ok, location: @kendaraan }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @kendaraan.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /kendaraans/1 or /kendaraans/1.json
  def destroy
    @kendaraan.destroy

    respond_to do |format|
      format.html { redirect_to kendaraans_url, notice: "Kendaraan was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_kendaraan
      @kendaraan = Kendaraan.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def kendaraan_params
      params.require(:kendaraan).permit(:employee_id, :merk_kendaraan, :tipe_kendaraan)
    end
end
