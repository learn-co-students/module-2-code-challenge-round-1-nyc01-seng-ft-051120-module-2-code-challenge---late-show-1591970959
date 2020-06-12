class Guest < ApplicationRecord 
 has_many :appearances
 has_many :episodes, through: :appearances


 def ave_rating
    c=0
    total=0
    self.appearances.each do |ap|
        c +=1
        total +=ap.rating
    end
    total/c
end

def sort_rating
    
    Appearance.where("guest_id = #{self.id}").order(rating: :desc)
end
end
