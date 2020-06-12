class Appearence < ApplicationRecord
  belongs_to :episode
  belongs_to :guest
  validates :rating, inclusion: {in: 1.0..5.0}
end
