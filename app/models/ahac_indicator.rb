class AhacIndicator < ApplicationRecord
  validates :stakeholder, presence: true
  validates :year, presence: true, length: { is: 4 }, numericality: { only_integer: true }
  validates :month, presence: true
  validates :number_of_operations, presence: true, numericality: { only_integer: true } 
end