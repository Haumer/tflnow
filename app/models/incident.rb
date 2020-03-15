class Incident < ApplicationRecord
  belongs_to :line
  has_many :station_incidents
end
