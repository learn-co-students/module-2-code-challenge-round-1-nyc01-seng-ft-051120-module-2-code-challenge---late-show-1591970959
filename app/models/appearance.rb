class Appearance < ApplicationRecord
    belongs_to :guest
    belongs_to :episode
    validates :numeric_rating, numericality: { greater_than_or_equal_to: 1 }
    validates :numeric_rating, numericality: { less_than_or_equal_to: 5 }
end
