class MyministersController < ApplicationController
  before_action :set_myminister, only: [:show, :edit, :update, :destroy]

  # GET /myministers
  # GET /myministers.json
  def index
    @myministers = Myminister.all
  end

  # GET /myministers/1
  # GET /myministers/1.json
  def show
  end

  # GET /myministers/new
  def new
    @myminister = Myminister.new
  end

  # GET /myministers/1/edit
  def edit
  end

  # POST /myministers
  # POST /myministers.json
  def create
    @myminister = Myminister.new(myminister_params)

    respond_to do |format|
      if @myminister.save
        format.html { redirect_to @myminister, notice: 'Myminister was successfully created.' }
        format.json { render :show, status: :created, location: @myminister }
      else
        format.html { render :new }
        format.json { render json: @myminister.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /myministers/1
  # PATCH/PUT /myministers/1.json
  def update
    respond_to do |format|
      if @myminister.update(myminister_params)
        format.html { redirect_to @myminister, notice: 'Myminister was successfully updated.' }
        format.json { render :show, status: :ok, location: @myminister }
      else
        format.html { render :edit }
        format.json { render json: @myminister.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /myministers/1
  # DELETE /myministers/1.json
  def destroy
    @myminister.destroy
    respond_to do |format|
      format.html { redirect_to myministers_url, notice: 'Myminister was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_myminister
      @myminister = Myminister.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def myminister_params
      params.require(:myminister).permit(:name, :ministry_id)
    end
end
