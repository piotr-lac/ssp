class AddYearAndMonthToAdrIndicators < ActiveRecord::Migration[5.1]
  def change
    add_column :adr_indicators, :year, :integer
    add_column :adr_indicators, :month, :string
  end
end
