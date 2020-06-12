class Episode < ApplicationRecord
  has_many :appearances
  has_many :guests, through: :appearances

  def average_rating 
    if self.appearances.empty?
      return 0
    end 
    sum = self.appearances.reduce(0){|sum, appearance| sum + appearance.rating}
    sum.to_f / self.appearances.count
  end
end

