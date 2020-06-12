class Episode < ApplicationRecord
    has_many :appearances
    has_many :guests, through: :appearances


    def my_ratings
        ratings = []
        Appearance.all.map do |appearance|
          if appearance.episode  == self
            ratings << appearance.rating
          end
        end
      ratings
    end

    def ratings_average
        count = 0
        self.my_ratings.each do |rating|
            count += rating 
        end
       count #/ self.my_ratings.count 
    end

    def average 
        if self.ratings_average == 0
            return "0. No Appearance Ratings!"
        else 
            self.ratings_average/ self.my_ratings.count
        end
    end


end
