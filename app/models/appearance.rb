class Appearance < ApplicationRecord
  belongs_to :guest
  belongs_to :episode
  validates :rating, numericality: { greater_than: 0,less_than:6 }
  validate :guest_only_one_appearance_per_episode

  def details
    "Date: #{self.episode.date.strftime("%B %d, %Y")} - Rating: #{self.rating}"
  end

  private 
  def guest_only_one_appearance_per_episode
    unless !Appearance.where("episode_id = ? and guest_id = ?",self.episode_id,self.guest_id).any?
      errors.add(:guest_id, "this guest is already part of this episode ")
    end
  end
end
