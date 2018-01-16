class CreateAtoIndicators < ActiveRecord::Migration[5.1]
  def change
    create_table :ato_indicators do |t|
      t.string :stakeholder, null: false
      t.integer :year, null: false
      t.string :month, null: false
      t.integer :number_of_operations, null: false
      t.integer :scf_np
      t.integer :scf_pp
      t.integer :tow_winch
      t.integer :tow_aero

      t.timestamps
    end
  end
end
