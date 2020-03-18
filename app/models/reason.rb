class Reason < ApplicationRecord
  has_many :incident_reasons
  has_many :incidents, through: :incident_reasons
end
