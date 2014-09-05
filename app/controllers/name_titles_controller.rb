class NameTitlesController < ApplicationController
  before_action :set_name_title, only: [:show, :edit, :update, :destroy]

  # GET /name_titles
  # GET /name_titles.json
  def index
    @name_titles = NameTitle.all
  end

  # GET /name_titles/1
  # GET /name_titles/1.json
  def show
  end

  # GET /name_titles/new
  def new
    @name_title = NameTitle.new
  end

  # GET /name_titles/1/edit
  def edit
  end

  # POST /name_titles
  # POST /name_titles.json
  def create
    @name_title = NameTitle.new(name_title_params)

    respond_to do |format|
      if @name_title.save
        format.html { redirect_to @name_title, notice: 'Name title was successfully created.' }
        format.json { render :show, status: :created, location: @name_title }
      else
        format.html { render :new }
        format.json { render json: @name_title.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /name_titles/1
  # PATCH/PUT /name_titles/1.json
  def update
    respond_to do |format|
      if @name_title.update(name_title_params)
        format.html { redirect_to @name_title, notice: 'Name title was successfully updated.' }
        format.json { render :show, status: :ok, location: @name_title }
      else
        format.html { render :edit }
        format.json { render json: @name_title.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /name_titles/1
  # DELETE /name_titles/1.json
  def destroy
    @name_title.destroy
    respond_to do |format|
      format.html { redirect_to name_titles_url, notice: 'Name title was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_name_title
      @name_title = NameTitle.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def name_title_params
      params.require(:name_title).permit(:name)
    end
end
