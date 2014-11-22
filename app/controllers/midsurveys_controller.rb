class MidsurveysController < ApplicationController
  before_action :set_midsurvey, only: [:show, :edit, :update, :destroy]

  # GET /midsurveys
  # GET /midsurveys.json
  def index
    @midsurveys = Midsurvey.all
    respond_to do |format|
      format.html
      format.csv { send_data @midsurveys.to_csv }
    end
  end

  # GET /midsurveys/1
  # GET /midsurveys/1.json
  def show
  end

  # GET /midsurveys/new
  def new
    @midsurvey = Midsurvey.new
  end

  # GET /midsurveys/1/edit
  def edit
  end

  # POST /midsurveys
  # POST /midsurveys.json
  def create
    @midsurvey = Midsurvey.new(midsurvey_params)

    respond_to do |format|
      if @midsurvey.save
        format.html { redirect_to final_path, notice: 'Midsurvey was successfully created.' }
        format.json { render :show, status: :created, location: @midsurvey }
      else
        format.html { render :new }
        format.json { render json: @midsurvey.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /midsurveys/1
  # PATCH/PUT /midsurveys/1.json
  def update
    respond_to do |format|
      if @midsurvey.update(midsurvey_params)
        format.html { redirect_to @midsurvey, notice: 'Midsurvey was successfully updated.' }
        format.json { render :show, status: :ok, location: @midsurvey }
      else
        format.html { render :edit }
        format.json { render json: @midsurvey.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /midsurveys/1
  # DELETE /midsurveys/1.json
  def destroy
    @midsurvey.destroy
    respond_to do |format|
      format.html { redirect_to midsurveys_url, notice: 'Midsurvey was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_midsurvey
      @midsurvey = Midsurvey.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def midsurvey_params
      params.require(:midsurvey).permit(:name, :review)
    end
end
