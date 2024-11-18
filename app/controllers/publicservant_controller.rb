class PublicservantController < ApplicationController
  before_action :set_publicservant, only: %i[ show edit update destroy ]

  # GET /publicservant or /publicservant.json
  def index
    @publicservant = Publicservant.all
  end

  # GET /publicservant/1 or /publicservant/1.json
  def show
  end

  # GET /publicservant/new
  def new
    @publicservant = Publicservant.new
  end

  # GET /publicservant/1/edit
  def edit
  end

  # POST /publicservant or /publicservant.json
  def create
    @publicservant = Publicservant.new(publicservant_params)

    respond_to do |format|
      if @publicservant.save
        format.html { redirect_to publicservant_index_path, notice: "Publicservant was successfully created." }
        format.json { render :show, status: :created, location: @publicservant }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @publicservant.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /publicservant/1 or /publicservant/1.json
  def update
    respond_to do |format|
      if @publicservant.update(publicservant_params)
        format.html { redirect_to publicservant_index_path, notice: "Publicservant was successfully updated." }
        format.json { render :show, status: :ok, location: @publicservant }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @publicservant.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /publicservant/1 or /publicservant/1.json
  def destroy
    @publicservant.destroy!

    respond_to do |format|
      format.html { redirect_to publicservant_index_path, status: :see_other, notice: "Publicservant was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_publicservant
      @publicservant = Publicservant.find_by!(email: params[:email])
    end

    # Only allow a list of trusted parameters through.
    def publicservant_params
      params.expect(publicservant: [ :email, :department ])
    end
end
