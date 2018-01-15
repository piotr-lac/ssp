class CreateAdrIndicators < ActiveRecord::Migration[5.1]
  def change
    create_table :adr_indicators do |t|
      t.string :stakeholder
      t.integer :number_of_operations
      t.integer :rwy_incursion
      t.integer :twy_incursion
      t.integer :app_incursion
      t.integer :rwy_excursion
      t.integer :twy_excursion
      t.integer :app_excursion
      t.integer :fuel
      t.integer :fsf
      t.integer :gcol
      t.integer :ramp
      t.float :obstacle
      t.integer :birdstrike
      t.integer :wildlife
      t.integer :wild_take_abort
      t.integer :go_around
      t.integer :land_rvr
      t.integer :take_off_rvr
      t.integer :gcol_ramp_lvp
    end
  end
end
