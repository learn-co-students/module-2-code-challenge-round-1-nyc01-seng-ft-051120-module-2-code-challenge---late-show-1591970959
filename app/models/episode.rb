class Episode < ApplicationRecord
    has_many :appearances
    has_many :guests, through: :appearances

    def avg_rating
        ratings = []
        self.appearances.each do |e|
            all_ratings= [] 
            all_ratings << e.rating
            average = (all_ratings.sum(0.0) / all_ratings.size)
            ratings << average
        end
        average_ratings = (ratings.sum(0.0) / ratings.size)
        average_ratings
    end
end
