class CountryStatisticsController < ApplicationController
  before_action :set_country_statistic, only: %i[ show edit update destroy ]

  # GET /country_statistics or /country_statistics.json
  def index
    @country_statistics = CountryStatistic.all
  end

  # GET /country_statistics/1 or /country_statistics/1.json
  def show
  end

  # GET /country_statistics/new
  def new
    @country_statistic = CountryStatistic.new
  end

  # GET /country_statistics/1/edit
  def edit
  end

  # POST /country_statistics or /country_statistics.json
  def create
    @country_statistic = CountryStatistic.new(country_statistic_params)

    respond_to do |format|
      if @country_statistic.save
        format.html { redirect_to country_statistic_url(@country_statistic), notice: "Country statistic was successfully created." }
        format.json { render :show, status: :created, location: @country_statistic }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @country_statistic.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /country_statistics/1 or /country_statistics/1.json
  def update
    respond_to do |format|
      if @country_statistic.update(country_statistic_params)
        format.html { redirect_to country_statistic_url(@country_statistic), notice: "Country statistic was successfully updated." }
        format.json { render :show, status: :ok, location: @country_statistic }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @country_statistic.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /country_statistics/1 or /country_statistics/1.json
  def destroy
    @country_statistic.destroy

    respond_to do |format|
      format.html { redirect_to country_statistics_url, notice: "Country statistic was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_country_statistic
      @country_statistic = CountryStatistic.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def country_statistic_params
      params.require(:country_statistic).permit(:name, :mobilephones, :mortalityunder5, :healthexpenditurepercapita, :healthexpenditureppercentGDP, :population, :populationurban, :birthrate, :lifeexpectancy, :GDP)
    end
end
