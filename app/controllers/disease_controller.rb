class DiseaseController < ApplicationController
  before_action :set_disease, only: %i[ show edit update destroy ]

  # GET /disease or /disease.json
  def index
    @disease = Disease.all
  end

  # GET /disease/1 or /disease/1.json
  def show
  end

  # GET /disease/new
  def new
    @disease = Disease.new
  end

  # GET /disease/1/edit
  def edit
    @disease = Disease.find_by!(disease_code: params[:disease_code])
  end

  # POST /disease or /disease.json
  def create
    @disease = Disease.new(disease_params)

    respond_to do |format|
      if @disease.save
        format.html { redirect_to disease_index_path, notice: "Disease was successfully created." }
        format.json { render :show, status: :created, location: @disease }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @disease.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /disease/1 or /disease/1.json
  def update
    @disease = Disease.find_by!(disease_code: params[:disease_code])
    respond_to do |format|
      if @disease.update(disease_params)
        format.html { redirect_to disease_index_path, notice: "Disease was successfully updated." }
        format.json { render :show, status: :ok, location: @disease }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @disease.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /disease/1 or /disease/1.json
  def destroy
    @disease.destroy!

    respond_to do |format|
      format.html { redirect_to disease_index_path, status: :see_other, notice: "Disease was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_disease
      @disease = Disease.find_by!(disease_code: params[:disease_code])
    end

    # Only allow a list of trusted parameters through.
    def disease_params
      params.expect(disease: [ :disease_code, :pathogen, :description, :id_disease ])
    end
end
