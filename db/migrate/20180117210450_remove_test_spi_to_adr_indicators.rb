class RemoveTestSpiToAdrIndicators < ActiveRecord::Migration[5.1]
  def change
    remove_column :adr_indicators, :rwy_incursion_spi, :float
  end
end
