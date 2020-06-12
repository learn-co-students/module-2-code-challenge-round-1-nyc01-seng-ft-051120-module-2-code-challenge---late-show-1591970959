class Guest < ApplicationRecord
has_many :appearance
has_many :episodes, through: :appearance
end
