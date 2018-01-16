class CreateAhacIndicators < ActiveRecord::Migration[5.1]
  def change
    create_table :ahac_indicators do |t|
      t.string :stakeholder
      t.integer :year
      t.string :month
      t.integer :number_of_operations
      t.integer :fsf
    end
  end
end
