class Episode < ApplicationRecord
    has_many :appearances
    has_many :guests, through: :appearances

    def average_rating
        average = 0
        self.appearances.each do |rate|
            average += rate.numeric_rating
        end
        average/appearances.count
    end

end
