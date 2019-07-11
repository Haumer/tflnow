class Line < ApplicationRecord
  has_many :incidents
  has_many :stations
end
