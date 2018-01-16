class AdrIndicatorsController < ApplicationController
  def index
    stake = ""
    return @adr_spis = AdrIndicator.all.select {|spi| spi.stakeholder == stake} if stake != ""
    @adr_spis = AdrIndicator.all
  end

  def show
    @adr_spi = AdrIndicator.find(params[:id])
  end

  def new
    @adr_indicator = AdrIndicator.new
  end

  def create
    @adr_indicator = AdrIndicator.new(adr_indicator_params)
    @adr_indicator.save
    redirect_to adr_indicators_path
  end

  def edit
    @adr_spi = AdrIndicator.find(params[:id])
  end

  def update
    @adr_spi = AdrIndicator.find(params[:id])
    @adr_spi.update(adr_spi_params)
    redirect_to adr_indicators_path
    
  end

  def destroy
    @adr_spi = AdrIndicator.find(params[:id])
    @adr_spi.destroy
    redirect_to adr_indicators_path
  end

  private

  # def permit!
  #   each_pair do |key, value|
  #     convert_hashes_to_parameters(key, value)
  #     self[key].permit! if self[key].respond_to? :permit!
  #   end
  #   self
  # end


  def adr_indicator_params #(aby nie wypisywać ręcznie wszystkich params można używać permit!)
    params.require(:adr_indicator).permit(:year, :month, :stakeholder, :number_of_operations, :rwy_incursion, :twy_incursion, :app_incursion, :rwy_excursion, :twy_excursion, :app_excursion, :fuel, :fsf, :gcol, :ramp, :obstacle, :birdstrike, :wildlife, :wild_take_abort, :go_around, :land_rvr, :take_of_rvr, :gcol_ramp_lvp)
  end
end

# @atr = AdrIndicator.attribute_names.map {|x| x.to_sym}