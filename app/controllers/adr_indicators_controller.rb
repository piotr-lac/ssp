class AdrIndicatorsController < ApplicationController
  def index
    stake = ""
    return @adr_spis = AdrIndicator.all.select {|spi| spi.stakeholder == stake} if stake != ""
    @adr_spis = AdrIndicator.all
  end

  def show
  end

  def new
    @adr_spi = AdrIndicator.new
  end

  def create
    @adr_spi = AdrIndicator.new(adr_spi_params)
    @adr_spi.save
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private

  def adr_spi_params
    params.require(::).permit()
end