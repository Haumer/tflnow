class StationLine < ApplicationRecord
  belongs_to :branch
  belongs_to :station
end
