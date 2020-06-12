class Guest < ApplicationRecord
    has_many :appearances
    has_many :episodes, through: :appearances

    def name_and_occupation
        "Name: #{self.name} - Occupation: #{self.occupation}"
    end

    def order_by_rating
        self.appearances.sort do |appearance1, appearance2|
            appearance2.numeric_rating <=> appearance1.numeric_rating
        end
    end

end
