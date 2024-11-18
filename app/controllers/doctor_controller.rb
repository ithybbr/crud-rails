class DoctorController < ApplicationController
  before_action :set_doctor, only: %i[ show edit update destroy ]

  # GET /doctor or /doctor.json
  def index
    @doctor = Doctor.all
  end

  # GET /doctor/1 or /doctor/1.json
  def show
  end

  # GET /doctor/new
  def new
    @doctor = Doctor.new
  end

  # GET /doctor/1/edit
  def edit
  end

  # POST /doctor or /doctor.json
  def create
    @doctor = Doctor.new(doctor_params)

    respond_to do |format|
      if @doctor.save
        format.html { redirect_to doctor_index_path, notice: "Doctor was successfully created." }
        format.json { render :show, status: :created, location: @doctor }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @doctor.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /doctor/1 or /doctor/1.json
  def update
    respond_to do |format|
      if @doctor.update(doctor_params)
        format.html { redirect_to doctor_index_path, notice: "Doctor was successfully updated." }
        format.json { render :show, status: :ok, location: @doctor }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @doctor.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /doctor/1 or /doctor/1.json
  def destroy
    @doctor.destroy!

    respond_to do |format|
      format.html { redirect_to doctor_index_path, status: :see_other, notice: "Doctor was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_doctor
      @doctor = Doctor.find_by!(email: params[:email])
    end

    # Only allow a list of trusted parameters through.
    def doctor_params
      params.expect(doctor: [ :email, :degree ])
    end
end
