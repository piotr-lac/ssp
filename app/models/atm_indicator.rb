class AtmIndicator < ApplicationRecord
  validates :stakeholder, presence: true
  validates :year, presence: true, length: { is: 4 }, numericality: { only_integer: true }
  validates :month, presence: true
  
end