class Guest < ApplicationRecord
   has_many :appearances
   has_many :episodes, through: :appearances

   def name_and_occupation
      "#{self.name}, #{self.occupation}"
   end
end
