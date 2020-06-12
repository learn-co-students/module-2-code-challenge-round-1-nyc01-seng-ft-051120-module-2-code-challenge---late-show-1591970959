class Episode < ApplicationRecord
   has_many :appearances
   has_many :guests, through: :appearances


   def date_and_number
      "Date: #{self.date}, Episode: #{self.number}"
   end
end
