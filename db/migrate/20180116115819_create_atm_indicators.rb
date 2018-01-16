class CreateAtmIndicators < ActiveRecord::Migration[5.1]
  def change
    create_table :atm_indicators do |t|
      t.string :stakeholder
      t.integer :year
      t.string :month
      t.integer :safety_alt
      t.integer :level_bust
      t.integer :smi
      t.integer :rvr_minima
    end
  end
end
