class DiscoverController < ApplicationController
  before_action :set_discover, only: %i[ show edit update destroy ]

  # GET /discover or /discover.json
  def index
    @discover = Discover.all
  end

  # GET /discover/1 or /discover/1.json
  def show
  end

  # GET /discover/new
  def new
    @discover = Discover.new
  end

  # GET /discover/1/edit
  def edit
    @discover = Discover.find_by!(disease_code: params[:disease_code])
  end

  # POST /discover or /discover.json
  def create
    @discover = Discover.new(discover_params)

    respond_to do |format|
      if @discover.save
        format.html { redirect_to discover_index_path, notice: "Discover was successfully created." }
        format.json { render :show, status: :created, location: @discover }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @discover.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /discover/1 or /discover/1.json
  def update
    @discover = Discover.find_by!(disease_code: params[:disease_code])
    respond_to do |format|
      if @discover.update(discover_params)
        format.html { redirect_to discover_index_path, notice: "Discover was successfully updated." }
        format.json { render :show, status: :ok, location: @discover }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @discover.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /discover/1 or /discover/1.json
  def destroy
    @discover.destroy!

    respond_to do |format|
      format.html { redirect_to discover_index_path, status: :see_other, notice: "Discover was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_discover
      @discover = Discover.find_by!(disease_code: params[:disease_code])
    end

    # Only allow a list of trusted parameters through.
    def discover_params
      params.expect(discover: [ :cname, :disease_code, :first_enc_date ])
    end
end
