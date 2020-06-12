class Episode < ApplicationRecord
    has_many :appearances
    has_many :guests, through: :appearances

    def number_and_date
        "Episode Number #{self.number} on #{self.date}"
    end

end
