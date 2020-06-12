class Appearance < ApplicationRecord
    belongs_to :guest
    belongs_to :episode
    validates :rating, numericality: {less_than_or_equal_to: 5, greater_than_or_equal_to: 1}
    validates :episode_id, uniqueness: {scope: :guest_id, message: "That guest has already been on the air"}

    
end
