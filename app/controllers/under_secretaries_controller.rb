class UnderSecretariesController < ApplicationController
  before_action :set_under_secretary, only: [:show, :edit, :update, :destroy]

  # GET /under_secretaries
  # GET /under_secretaries.json
  def index
    @under_secretaries = UnderSecretary.all
  end

  # GET /under_secretaries/1
  # GET /under_secretaries/1.json
  def show
  end

  # GET /under_secretaries/new
  def new
    @under_secretary = UnderSecretary.new
  end

  # GET /under_secretaries/1/edit
  def edit
  end

  # POST /under_secretaries
  # POST /under_secretaries.json
  def create
    @under_secretary = UnderSecretary.new(under_secretary_params)

    respond_to do |format|
      if @under_secretary.save
        format.html { redirect_to @under_secretary, notice: 'Under secretary was successfully created.' }
        format.json { render :show, status: :created, location: @under_secretary }
      else
        format.html { render :new }
        format.json { render json: @under_secretary.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /under_secretaries/1
  # PATCH/PUT /under_secretaries/1.json
  def update
    respond_to do |format|
      if @under_secretary.update(under_secretary_params)
        format.html { redirect_to @under_secretary, notice: 'Under secretary was successfully updated.' }
        format.json { render :show, status: :ok, location: @under_secretary }
      else
        format.html { render :edit }
        format.json { render json: @under_secretary.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /under_secretaries/1
  # DELETE /under_secretaries/1.json
  def destroy
    @under_secretary.destroy
    respond_to do |format|
      format.html { redirect_to under_secretaries_url, notice: 'Under secretary was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_under_secretary
      @under_secretary = UnderSecretary.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def under_secretary_params
      params.require(:under_secretary).permit(:name)
    end
end
