class CreateAtoIndicators < ActiveRecord::Migration[5.1]
  def change
    create_table :ato_indicators do |t|
      t.string :stakeholder
      t.integer :year
      t.string :month
      t.integer :number_of_operations
      t.integer :scf_np
      t.integer :scf_pp
      t.integer :tow_winch
      t.integer :tow_aero
    end
  end
end
