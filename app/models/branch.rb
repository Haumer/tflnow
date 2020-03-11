class Branch < ApplicationRecord
  belongs_to :line
  has_many :station_lines
end
