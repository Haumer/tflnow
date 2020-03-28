class StationLine < ApplicationRecord
  belongs_to :branch
  belongs_to :station

  def line
    self.branch.line
  end
end
