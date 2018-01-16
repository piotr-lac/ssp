class CreateAhacIndicators < ActiveRecord::Migration[5.1]
  def change
    create_table :ahac_indicators do |t|
      t.string :stakeholder, null: false
      t.integer :year, null: false
      t.string :month, null: false
      t.integer :number_of_operations, null: false
      t.integer :fsf

      t.timestamps
    end
  end
end
