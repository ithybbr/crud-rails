class DiseasetypeController < ApplicationController
  before_action :set_diseasetype, only: %i[ show edit update destroy ]

  # GET /diseasetype or /diseasetype.json
  def index
    @diseasetype = Diseasetype.all
  end

  # GET /diseasetype/1 or /diseasetype/1.json
  def show
  end

  # GET /diseasetype/new
  def new
    @diseasetype = Diseasetype.new
  end

  # GET /diseasetype/1/edit
  def edit
  end

  # POST /diseasetype or /diseasetype.json
  def create
    @diseasetype = Diseasetype.new(diseasetype_params)

    respond_to do |format|
      if @diseasetype.save
        format.html { redirect_to diseasetype_index_path, notice: "Diseasetype was successfully created." }
        format.json { render :show, status: :created, location: @diseasetype }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @diseasetype.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /diseasetype/1 or /diseasetype/1.json
  def update
    respond_to do |format|
      if @diseasetype.update(diseasetype_params)
        format.html { redirect_to diseasetype_index_path, notice: "Diseasetype was successfully updated." }
        format.json { render :show, status: :ok, location: @diseasetype }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @diseasetype.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /diseasetype/1 or /diseasetype/1.json
  def destroy
    @diseasetype.destroy!

    respond_to do |format|
      format.html { redirect_to diseasetype_index_path, status: :see_other, notice: "Diseasetype was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_diseasetype
      @diseasetype = Diseasetype.find(params.expect(:id))
    end

    # Only allow a list of trusted parameters through.
    def diseasetype_params
      params.expect(diseasetype: [ :id, :description ])
    end
end
