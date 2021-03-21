class Snapshot < ApplicationRecord
  validates :data, presence: true
end
