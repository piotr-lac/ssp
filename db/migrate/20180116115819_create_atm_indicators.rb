class CreateAtmIndicators < ActiveRecord::Migration[5.1]
  def change
    create_table :atm_indicators do |t|
      t.string :stakeholder, null: false
      t.integer :year, null: false
      t.string :month, null: false
      t.integer :safety_alt
      t.integer :level_bust
      t.integer :smi
      t.integer :rvr_minima

      t.timestamps
    end
  end
end
