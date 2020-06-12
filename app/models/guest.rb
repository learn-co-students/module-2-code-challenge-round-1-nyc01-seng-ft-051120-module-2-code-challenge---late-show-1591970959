class Guest < ApplicationRecord
    has_many :appearances
    has_many :episodes, through: :appearances

    def name_and_occupation
        "Name: #{self.name} - Occupation: #{self.occupation}"
    end
end
