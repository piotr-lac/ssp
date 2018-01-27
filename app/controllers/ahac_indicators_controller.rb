class AhacIndicatorsController < ApplicationController
  def index
    @ahac_spis = AhacIndicator.all
  end

  def show
    @ahac_indicator = AhacIndicator.find(params[:id])
  end

  def new
    @ahac_indicator = AhacIndicator.new
  end

  def create
    @ahac_indicator = AhacIndicator.new(params.require(:ahac_indicator).permit!)
    @ahac_indicator.save
    redirect_to ahac_indicators_path
  end

  def edit
    @ahac_indicator = AhacIndicator.find(params[:id])
  end

  def update
    @ahac_indicator = AhacIndicator.find(params[:id])
    @ahac_indicator.update(params.require(:ahac_indicator).permit!)
    redirect_to ahac_indicators_path
  end

  def destroy
    @ahac_indicator = AhacIndicator.find(params[:id])
    @ahac_indicator.destroy
    redirect_to ahac_indicators_path
  end
  
  private

  def permit!
    each_pair do |key, value|
      convert_hashes_to_parameters(key, value)
      self[key].permit! if self[key].respond_to? :permit!
    end
    self
  end
  
end