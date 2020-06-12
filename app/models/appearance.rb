class Appearance < ApplicationRecord
    belongs_to :episode
    belongs_to :guest
    
    validates :rating,  numericality:{less_than: 6}
end