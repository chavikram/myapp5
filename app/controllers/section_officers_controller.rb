class SectionOfficersController < ApplicationController
  before_action :set_section_officer, only: [:show, :edit, :update, :destroy]

  # GET /section_officers
  # GET /section_officers.json
  def index
    @section_officers = SectionOfficer.all
  end

  # GET /section_officers/1
  # GET /section_officers/1.json
  def show
  end

  # GET /section_officers/new
  def new
    @section_officer = SectionOfficer.new
  end

  # GET /section_officers/1/edit
  def edit
  end

  # POST /section_officers
  # POST /section_officers.json
  def create
    @section_officer = SectionOfficer.new(section_officer_params)

    respond_to do |format|
      if @section_officer.save
        format.html { redirect_to @section_officer, notice: 'Section officer was successfully created.' }
        format.json { render :show, status: :created, location: @section_officer }
      else
        format.html { render :new }
        format.json { render json: @section_officer.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /section_officers/1
  # PATCH/PUT /section_officers/1.json
  def update
    respond_to do |format|
      if @section_officer.update(section_officer_params)
        format.html { redirect_to @section_officer, notice: 'Section officer was successfully updated.' }
        format.json { render :show, status: :ok, location: @section_officer }
      else
        format.html { render :edit }
        format.json { render json: @section_officer.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /section_officers/1
  # DELETE /section_officers/1.json
  def destroy
    @section_officer.destroy
    respond_to do |format|
      format.html { redirect_to section_officers_url, notice: 'Section officer was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_section_officer
      @section_officer = SectionOfficer.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def section_officer_params
      params.require(:section_officer).permit(:name)
    end
end
