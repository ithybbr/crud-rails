class SpecializeController < ApplicationController
  before_action :set_specialize, only: %i[ show edit update destroy ]

  # GET /specialize or /specialize.json
  def index
    @specialize = Specialize.all
  end

  # GET /specialize/1 or /specialize/1.json
  def show
  end

  # GET /specialize/new
  def new
    @specialize = Specialize.new
  end

  # GET /specialize/1/edit
  def edit
    @specialize = Specialize.find_by!(id_specialize: params[:id_specialize], email: params[:email])
  end

  # POST /specialize or /specialize.json
  def create
    @specialize = Specialize.new(specialize_params)

    respond_to do |format|
      if @specialize.save
        format.html { redirect_to specialize_index_path, notice: "Specialize was successfully created." }
        format.json { render :show, status: :created, location: @specialize }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @specialize.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /specialize/1 or /specialize/1.json
  def update
    @specialize = Specialize.find_by!(id_specialize: params[:id_specialize], email: params[:email])
    respond_to do |format|
      if @specialize.update(specialize_params)
        format.html { redirect_to specialize_index_path, notice: "Specialize was successfully updated." }
        format.json { render :show, status: :ok, location: @specialize }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @specialize.errors, status: :unprocessable_entity }
      end
    end
  end


  # DELETE /specialize/1 or /specialize/1.json
  def destroy
    @specialize.destroy!

    respond_to do |format|
      format.html { redirect_to specialize_index_path, status: :see_other, notice: "Specialize was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_specialize
      @specialize = Specialize.find_by!(id_specialize: params[:id_specialize], email: params[:email])
    end

    # Only allow a list of trusted parameters through.
    def specialize_params
      params.expect(specialize: [ :id_specialize, :email ])
    end
end
