class PatientdiseaseController < ApplicationController
  before_action :set_patientdisease, only: %i[ show edit update destroy ]

  # GET /patientdisease or /patientdisease.json
  def index
    @patientdisease = Patientdisease.all
  end

  # GET /patientdisease/1 or /patientdisease/1.json
  def show
  end

  # GET /patientdisease/new
  def new
    @patientdisease = Patientdisease.new
  end

  # GET /patientdisease/1/edit
  def edit
    @patientdisease = Patientdisease.find_by!(email: params[:email])
  end

  # POST /patientdisease or /patientdisease.json
  def create
    @patientdisease = Patientdisease.new(patientdisease_params)

    respond_to do |format|
      if @patientdisease.save
        format.html { redirect_to patientdisease_index_path, notice: "Patientdisease was successfully created." }
        format.json { render :show, status: :created, location: @patientdisease }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @patientdisease.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /patientdisease/1 or /patientdisease/1.json
  def update
    @patientdisease = Patientdisease.find_by!(email: params[:email])
    respond_to do |format|
      if @patientdisease.update(patientdisease_params)
        format.html { redirect_to patientdisease_index_path, notice: "Patientdisease was successfully updated." }
        format.json { render :show, status: :ok, location: @patientdisease }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @patientdisease.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /patientdisease/1 or /patientdisease/1.json
  def destroy
    @patientdisease.destroy!

    respond_to do |format|
      format.html { redirect_to patientdisease_index_path, status: :see_other, notice: "Patientdisease was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_patientdisease
      @patientdisease = Patientdisease.find_by!(email: params[:email])
    end

    # Only allow a list of trusted parameters through.
    def patientdisease_params
      params.expect(patientdisease: [ :email, :disease_code ])
    end
end
