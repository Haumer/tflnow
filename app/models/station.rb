class Station < ApplicationRecord
  has_many :branches
  has_many :station_lines
  has_many :branches, through: :station_lines
  has_many :lines, through: :branches
  has_many :station_incidents

  validates :name, presence: true, uniqueness: true
end
