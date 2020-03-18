class Incident < ApplicationRecord
  belongs_to :line
  has_many :station_incidents
  has_many :incident_reasons
  has_many :reasons, through: :incident_reasons
end
