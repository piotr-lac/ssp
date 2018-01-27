class AtoIndicatorsController < ApplicationController
  def index
     @ato_spis = AtoIndicator.all
  end

  def show
     @ato_indicator = AtoIndicator.find(params[:id])
  end

  def new
    @ato_indicator = AtoIndicator.new
  end

  def create
    @ato_indicator = AtoIndicator.new(params.require(:ato_indicator).permit!)
    @ato_indicator.save
    redirect_to ato_indicators_path
  end

  def edit
     @ato_indicator = AtoIndicator.find(params[:id])
  end

  def update
    @ato_indicator = AtoIndicator.find(params[:id])
    @ato_indicator.update(params.require(:ato_indicator).permit!)
    redirect_to ato_indicators_path
  end

  def destroy
    @ato_indicator = AtoIndicator.find(params[:id])
    @ato_indicator.destroy
    redirect_to ato_indicators_path
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