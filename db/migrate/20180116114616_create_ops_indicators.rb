class CreateOpsIndicators < ActiveRecord::Migration[5.1]
  def change
    create_table :ops_indicators do |t|
      t.string :stakeholder, null: false
      t.integer :year, null: false
      t.string :month, null: false
      t.integer :number_of_operations, null: false
      t.integer :rwy_excursion
      t.integer :twy_excursion
      t.integer :app_excursion
      t.integer :arc
      t.integer :fumes_smoke
      t.integer :fire
      t.integer :taws
      t.integer :stall_warning
      t.integer :level_bust
      t.integer :tcas_ra
      t.integer :scf_np
      t.integer :scf_pp

      t.timestamps
    end
  end
end
