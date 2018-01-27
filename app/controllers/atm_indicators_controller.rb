class AtmIndicatorsController < ApplicationController
  def index
    @atm_spis = AtmIndicator.all
  end

  def show
     @atm_indicator = AtmIndicator.find(params[:id])
  end

  def new
     @atm_indicator = AtmIndicator.new
  end

  def create
    @atm_indicator = AtmIndicator.new(params.require(:atm_indicator).permit!)
    @atm_indicator.save
    redirect_to atm_indicators_path
  end

  def edit
    @atm_indicator = AtmIndicator.find(params[:id])
  end

  def update
    @atm_indicator = AtmIndicator.find(params[:id])
    @atm_indicator.update(params.require(:atm_indicator).permit!)
    redirect_to atm_indicators_path
  end

  def destroy
    @atm_indicator = AtmIndicator.find(params[:id])
    @atm_indicator.destroy
    redirect_to atm_indicators_path
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