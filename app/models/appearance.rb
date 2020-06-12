class Appearance < ApplicationRecord
    belongs_to :guest
    belongs_to :episode

    validates :numeric_rating, inclusion: { in: (1 .. 5)}

    def date_rating
        "Date: #{self.episode.date} - Rating: #{self.numeric_rating}"
    end

end
