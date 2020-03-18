class IncidentReason < ApplicationRecord
  belongs_to :reason
  belongs_to :incident
end
