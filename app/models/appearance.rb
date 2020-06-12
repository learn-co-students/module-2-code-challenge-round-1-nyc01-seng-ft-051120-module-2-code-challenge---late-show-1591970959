class Appearance < ApplicationRecord
    belongs_to :episode
    belongs_to :guest
    validates :rating, :inclusion => 1..5
    validates_uniqueness_of :guest_id, scope: :episode_id
end