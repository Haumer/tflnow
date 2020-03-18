class Reason < ApplicationRecord
  has_many :incident_reasons, dependent: :destroy
  has_many :incidents, through: :incident_reasons
end
