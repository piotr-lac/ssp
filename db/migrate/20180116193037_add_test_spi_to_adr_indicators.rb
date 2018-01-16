class AddTestSpiToAdrIndicators < ActiveRecord::Migration[5.1]
  def change
    add_column :adr_indicators, :rwy_incursion_spi, :float
  end
end
