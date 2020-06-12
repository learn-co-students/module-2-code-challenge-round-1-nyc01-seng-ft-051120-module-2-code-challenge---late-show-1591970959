class Episode < ApplicationRecord
has_many :appearance
has_many :guests, through: :appearance

end
