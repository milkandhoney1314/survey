class LargesurveysController < ApplicationController
  before_action :set_largesurvey, only: [:show, :edit, :update, :destroy]

  # GET /largesurveys
  # GET /largesurveys.json
  def index
    @largesurveys = Largesurvey.all
    respond_to do |format|
      format.html
      format.csv { send_data @largesurveys.to_csv }
    end
  end

  # GET /largesurveys/1
  # GET /largesurveys/1.json
  def show
  end

  # GET /largesurveys/new
  def new
    @largesurvey = Largesurvey.new
  end

  # GET /largesurveys/1/edit
  def edit
  end

  # POST /largesurveys
  # POST /largesurveys.json
  def create
    @largesurvey = Largesurvey.new(largesurvey_params)

    respond_to do |format|
      if @largesurvey.save
        format.html { redirect_to final_path, notice: 'Largesurvey was successfully created.' }
        format.json { render :show, status: :created, location: @largesurvey }
      else
        format.html { render :new }
        format.json { render json: @largesurvey.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /largesurveys/1
  # PATCH/PUT /largesurveys/1.json
  def update
    respond_to do |format|
      if @largesurvey.update(largesurvey_params)
        format.html { redirect_to @largesurvey, notice: 'Largesurvey was successfully updated.' }
        format.json { render :show, status: :ok, location: @largesurvey }
      else
        format.html { render :edit }
        format.json { render json: @largesurvey.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /largesurveys/1
  # DELETE /largesurveys/1.json
  def destroy
    @largesurvey.destroy
    respond_to do |format|
      format.html { redirect_to largesurveys_url, notice: 'Largesurvey was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_largesurvey
      @largesurvey = Largesurvey.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def largesurvey_params
      params.require(:largesurvey).permit(:name, :review)
    end
end
