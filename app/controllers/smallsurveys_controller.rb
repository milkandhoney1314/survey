class SmallsurveysController < ApplicationController
  before_action :set_smallsurvey, only: [:show, :edit, :update, :destroy]

  # GET /smallsurveys
  # GET /smallsurveys.json
  def index
    @smallsurveys = Smallsurvey.all
    respond_to do |format|
      format.html
      format.csv { send_data @smallsurveys.to_csv }
    end
  end

  # GET /smallsurveys/1
  # GET /smallsurveys/1.json
  def show
    respond_to do |format|
      format.html
      
    end
  end

  # GET /smallsurveys/new
  def new
    @smallsurvey = Smallsurvey.new
  end

  # GET /smallsurveys/1/edit
  def edit
  end

  # POST /smallsurveys
  # POST /smallsurveys.json
  def create
    @smallsurvey = Smallsurvey.new(smallsurvey_params)

    respond_to do |format|
      if @smallsurvey.save
        format.html { redirect_to final_path, notice: 'Smallsurvey was successfully created.' }
        format.json { render :show, status: :created, location: @smallsurvey }
      else
        format.html { render :new }
        format.json { render json: @smallsurvey.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /smallsurveys/1
  # PATCH/PUT /smallsurveys/1.json
  def update
    respond_to do |format|
      if @smallsurvey.update(smallsurvey_params)
        format.html { redirect_to @smallsurvey, notice: 'Smallsurvey was successfully updated.' }
        format.json { render :show, status: :ok, location: @smallsurvey }
      else
        format.html { render :edit }
        format.json { render json: @smallsurvey.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /smallsurveys/1
  # DELETE /smallsurveys/1.json
  def destroy
    @smallsurvey.destroy
    respond_to do |format|
      format.html { redirect_to smallsurveys_url, notice: 'Smallsurvey was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_smallsurvey
      @smallsurvey = Smallsurvey.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def smallsurvey_params
      params.require(:smallsurvey).permit(:name, :review)
    end
end
