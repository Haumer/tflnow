class StationIncident < ApplicationRecord
  belongs_to :station
  belongs_to :incident
end
