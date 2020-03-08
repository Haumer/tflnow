class Station < ApplicationRecord
  has_many :branches
  has_many :station_lines
  has_many :lines, through: :station_lines

  validates :name, presence: true, uniqueness: true
end
