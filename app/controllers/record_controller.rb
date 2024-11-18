class RecordController < ApplicationController
  before_action :set_record, only: %i[ show edit update destroy ]

  # GET /record or /record.json
  def index
    @record = Record.all
  end

  # GET /record/1 or /record/1.json
  def show
  end

  # GET /record/new
  def new
    @record = Record.new
  end

  # GET /record/1/edit
  def edit
    @record = Record.find_by!(
      email: params[:email],
      disease_code: params[:disease_code],
      cname: params[:cname]
    )
  end
  # POST /record or /record.json
  def create
    @record = Record.new(record_params)

    respond_to do |format|
      if @record.save
        format.html { redirect_to record_index_path, notice: "Record was successfully created." }
        format.json { render :show, status: :created, location: @record }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @record.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /record/1 or /record/1.json
  def update
    @record = Record.find_by!(
      email: params[:email],
      cname: params[:cname],
      disease_code: params[:disease_code]
    )
    respond_to do |format|
      if @record.update(record_params)
        # After successfully updating, redirect to the record's show page
        format.html { redirect_to record_index_path, notice: "Record was successfully updated." }
        format.json { render :show, status: :ok, location: @record }
      else
        # If there was an error, render the edit page again
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @record.errors, status: :unprocessable_entity }
      end
    end
  end


  # DELETE /record/1 or /record/1.json
  def destroy
    @record.destroy!
    respond_to do |format|
      format.html { redirect_to record_index_path, status: :see_other, notice: "Record was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_record
      Rails.logger.debug "Params: #{params.inspect}"
      @record = Record.find_by!(
        email: params[:email],
        cname: params[:cname],
        disease_code: params[:disease_code]
      )
    end

    # Only allow a list of trusted parameters through.
    def record_params
      params.expect(record: [ :email, :cname, :disease_code, :total_deaths, :total_patients ])
    end
end
