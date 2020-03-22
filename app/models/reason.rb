class Reason < ApplicationRecord
  has_many :incident_reasons, dependent: :destroy
  has_many :incidents, through: :incident_reasons

  def self.ordered_by_incident_reasons
    Reason.joins(:incident_reasons).group('reasons.id').order('COUNT(reasons.id) DESC')
  end
end
